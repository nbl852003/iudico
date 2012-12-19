﻿using System;
using System.Xml;
using System.Xml.Serialization;
using System.IO;
using IUDICO.CourseManagement.Models.ManifestModels.MetadataModels;
using IUDICO.CourseManagement.Models.ManifestModels.OrganizationModels;
using IUDICO.CourseManagement.Models.ManifestModels.ResourceModels;
using IUDICO.CourseManagement.Models.ManifestModels.SequencingModels;

namespace IUDICO.CourseManagement.Models.ManifestModels
{
   [Serializable]
   [XmlRoot(SCORM.Manifest, Namespace = SCORM.ImscpNamespaceV1P3)]
   public class Manifest
   {
      public Manifest()
      {
         this.Identifier = ConstantStrings.ManifestId;
         this.Organizations = new Organizations();
         this.Resources = new Resources();
         this.Metadata = new ManifestMetadata();
      }

      #region XmlAttributes

      [XmlAttribute(SCORM.Identifier)]
      public string Identifier;

      [XmlAttribute(SCORM.Version)]
      public string Version;

      [XmlAttribute(SCORM.Base, Namespace = SCORM.XmlNamespace)]
      public string Base;

      #endregion

      #region XmlElements

      [XmlElement(SCORM.Metadata, Namespace = SCORM.ImscpNamespaceV1P3)]
      public ManifestMetadata Metadata;

      [XmlElement(SCORM.Organizations, Namespace = SCORM.ImscpNamespaceV1P3)]
      public Organizations Organizations;

      [XmlElement(SCORM.Resources, Namespace = SCORM.ImscpNamespaceV1P3)]
      public Resources Resources;

      [XmlElement(SCORM.SequencingCollection, Namespace = SCORM.ImsssNamespace)]
      public SequencingCollection SequencingCollection;

      #endregion

      #region Methods

      public void Serialize(StreamWriter writer)
      {
         var xs = new XmlSerializer(typeof(Manifest));

         var xsn = new XmlSerializerNamespaces();
         xsn.Add(SCORM.Adlcp, SCORM.AdlcpNamespaceV1P3);
         xsn.Add(SCORM.Imsss, SCORM.ImsssNamespace);
         xsn.Add(SCORM.Adlseq, SCORM.AdlseqNamespace);
         xsn.Add(SCORM.Adlnav, SCORM.AdlnavNamespace);
         xsn.Add(SCORM.Imsss, SCORM.ImsssNamespace);

         xs.Serialize(writer, this, xsn);
      }

      public static Manifest Deserialize(string manifestPath)
      {

         XmlTextReader reader = new XmlTextReader(new FileStream(manifestPath, FileMode.Open));

         string schema, schemaVersion;
         bool findSchema = false, findSchemaVersion = false;

         while (reader.Read())
         {
            switch (reader.NodeType)
            {
               case XmlNodeType.Element: // The node is an element.
                  if (reader.Name == "schema")
                  {
                     reader.Read();
                     schema = reader.Value;
                     findSchema = true;
                  }
                  if (reader.Name == "schemaversion")
                  {
                     reader.Read();
                     schemaVersion = reader.Value;
                     findSchemaVersion = true;
                  }
                  break;
            }
            if (findSchema && findSchemaVersion)
            {
               break;
            }
         }

         reader.Close();



         reader = new XmlTextReader(new FileStream(manifestPath, FileMode.Open));
         var xs = new XmlSerializer(typeof(Manifest));

         return (Manifest)xs.Deserialize(reader);
      }

      #endregion
   }
}