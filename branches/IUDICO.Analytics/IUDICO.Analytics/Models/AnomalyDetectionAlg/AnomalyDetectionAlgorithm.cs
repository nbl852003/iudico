﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IUDICO.Analytics.Models.AnomalyDetectionAlg.Accuracy;
using Accord.Math;
using IUDICO.Common.Models.Shared;
using IUDICO.Common.Models.Shared.CurriculumManagement;
using IUDICO.Common.Models.Shared.Statistics;

namespace IUDICO.Analytics.Models.AnomalyDetectionAlg
{
    public class AnomalyDetectionAlgorithm
    {
        /// <summary>
        /// This class contain only static fields and methods
        /// </summary>
        public AnomalyDetectionAlgorithm() { }

        /// <summary>
        /// This field contain object that implement IAccuracy interface.
        /// This object automaticaly calculate value of PxFormula e field.
        /// </summary>
        private IAccuracy accuracy = new TrueNegativAccuracy();

        /// <summary>
        /// This method required training sets for algorithm training and return PxFormula with setted algorithm values.
        /// </summary>
        /// <param name="trainingSet">This is TrainingSet class object. Must contain training set with ONLY normal records.</param>
        /// <param name="nonAnomaliesSet">This is TrainingSet class object. Must contain training set with ONLY normal records.</param>
        /// <param name="anomaliesSet">This is TrainingSet class object. Must contain training set with ONLY ANOMALY records.</param>
        /// <returns></returns>
        public PxFormula trainAlgorithm (TrainingSet trainingSet, TrainingSet nonAnomaliesSet, TrainingSet anomaliesSet)
        {
            PxFormula formula = calcFormula(trainingSet);
            accuracy.calcAccuracy(nonAnomaliesSet, anomaliesSet, formula);
            return formula;
        }

        /// <summary>
        /// This method creates PxFormula class object and set in it calculated nu vector and sigma matrix values.
        /// </summary>
        /// <param name="trainingSet">This is TrainingSet class object. Must contain training set with ONLY normal records.</param>
        /// <returns>PxFormula class object with setted nu vector and sigma matrix values.</returns>
        private PxFormula calcFormula (TrainingSet trainingSet)
        {
            int training_set_count = trainingSet.getCountOfRecords();
            int size = trainingSet.getAllRecords().First().Length;
            // calculate nu vector value
            double[] nu = new double[size];
            foreach (double[] feature_vector in trainingSet.getAllRecords())
            {
                nu = Matrix.Add(nu, feature_vector);
            }
            nu = Matrix.Divide(nu,training_set_count);

            // calculate sigme matrix
            double[,] sigma = new double[size, size];
            foreach (double[] feature_vector in trainingSet.getAllRecords())
            {
                double[] x_nu = Matrix.Subtract(feature_vector, nu);
                sigma = Matrix.Add(sigma, Matrix.Multiply(Matrix.ColumnVector(x_nu), Matrix.RowVector(x_nu)));
            }
            sigma = Matrix.Divide(sigma, training_set_count);

            // return PxFormula class object with setted nu and sigma values
            return new PxFormula(nu, sigma);
        }

        /// <summary>
        /// Set accuracy for this training process. All accuracy clases must implement IAccuracy interface.
        /// </summary>
        /// <param name="newAccuracy">Object that implement IAccuracy interface</param>
        public void setAccuracy (IAccuracy newAccuracy)
        {
            accuracy = newAccuracy;
        }


        // For demo

        public static IEnumerable<KeyValuePair<KeyValuePair<User, double[]>, bool>> runAlg(IEnumerable<KeyValuePair<User, double[]>> studentsAndMarks, TrainingSet trainingSet1, TrainingSet trainingSet2Normal, TrainingSet trainingSet2Anomalies)
        {            
            AnomalyDetectionAlgorithm train = new AnomalyDetectionAlgorithm();
            var formula = train.trainAlgorithm(trainingSet1, trainingSet2Normal, trainingSet2Anomalies);
            List<KeyValuePair<KeyValuePair<User, double[]>, bool>> res = new List<KeyValuePair<KeyValuePair<User, double[]>, bool>>();
            foreach (KeyValuePair<User, double[]> studentAndMark in studentsAndMarks)
            {
                bool isAnomaly = formula.isAnomaly(studentAndMark.Value);

                res.Add(new KeyValuePair<KeyValuePair<User, double[]>, bool>(studentAndMark, isAnomaly));
            }

            return res;
        }
    }
}