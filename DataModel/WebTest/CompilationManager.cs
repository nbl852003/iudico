﻿using System;
using System.Collections.Generic;
using System.IO;
using IUDICO.DataModel.DB;
using TestingSystem;
using TestingSystem.Compile;
using CompilationTester = TestingSystem.Tester;

namespace IUDICO.DataModel.WebTest
{
    class CompilationManager
    {
        public void Compile(TblUserAnswers userAnswer)
        {
            var question = ServerModel.DB.Load<TblQuestions>((int) userAnswer.QuestionRef);

            var compiledQuestion = ServerModel.DB.Load<TblCompiledQuestions>((int) question.CompiledQuestionRef);

            var compiledQuestionData= ServerModel.DB.Load<TblCompiledQuestionsData>(ServerModel.DB.LookupIds<TblCompiledQuestionsData>(compiledQuestion, null));


            var program = CompilationAssistant.CreateProgram(userAnswer.UserAnswer, (int)compiledQuestion.MemoryLimit, (int)compiledQuestion.TimeLimit,
                                        compiledQuestion.LanguageRef);

            if (compiledQuestionData != null && compiledQuestionData.Count != 0)
            {
                program.InputTest = compiledQuestionData[0].Input;
                program.OutputTest = compiledQuestionData[0].Output.Replace("\r", string.Empty);
            }

            var tester = CompilationAssistant.CreateTester();

            Store(tester.TestProgram(program), userAnswer);

        }

        private static void Store(Result res, TblUserAnswers ans)
        {
            var compiledAnswer = new TblCompiledAnswers
                                     {
                                         MemoryUsed = res.MemoryUsed,
                                         TimeUsed = res.TimeUsed,
                                         StatusRef = (int)res.ProgramStatus
                                     };

            ServerModel.DB.Insert(compiledAnswer);
            ans.CompiledAnswerRef = compiledAnswer.ID;
            
            ServerModel.DB.Update(ans);
        }
    }

    class CompilationAssistant
    {
        private const string dotNETPath = @"Compilers\dotNET\csc.exe";
        private const string delphiPath = @"Compilers\Delphi7\Dcc32.exe";
        private const string vc6Path = @"Compilers\VC6\CL.EXE";

        private const string dotNETLanguage = "CS dotNET 2.0";
        private const string delphiLanguage = "Dcc32";
        private const string vc6Language = "VC6";


        private static Settings CreateSettings()
        {
            string baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
            var settings = new Settings
            {
                Compilers = new List<Compiler>(),
                TestingDirectory = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString()),
                UserName = "",
                Password = ""
            };

            settings.Compilers.Add(new Compiler(dotNETLanguage, Path.Combine(baseDirectory, dotNETPath), "/t:exe $SourceFilePath$", "cs"));
            settings.Compilers.Add(new Compiler(delphiLanguage, Path.Combine(baseDirectory, delphiPath), "-U\"$CompilerDirectory$\" $SourceFilePath$", "pas"));
            settings.Compilers.Add(new Compiler(vc6Language, Path.Combine(baseDirectory, vc6Path), "/I\"$CompilerDirectory$\" $SourceFilePath$ /link /LIBPATH:\"$CompilerDirectory$\"", "cpp"));
            
            return settings;
        }

        public static CompilationTester CreateTester()
        {
            return new CompilationTester(CreateSettings());
        }

        public static Program CreateProgram(string source, int memoryLimit, int timeLimit, int languageRef)
        {
            return new Program
            {
                Source = source,
                MemoryLimit = memoryLimit,
                TimeLimit = timeLimit,
                Language = LanguageName(languageRef)
            };
        }

        private static string LanguageName(int languageRef)
        {
            switch (languageRef)
            {
                case (2):
                    {
                        return vc6Language;
                    }
                case (3):
                    {
                        return delphiLanguage;
                    }
            }
            return string.Empty;
        }
    }
}