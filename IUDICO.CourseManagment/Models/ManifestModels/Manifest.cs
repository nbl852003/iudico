﻿using System;
using System.Xml.Serialization;
using System.IO;
using IUDICO.CourseManagement.Models.ManifestModels.MetadataModels;
using IUDICO.CourseManagement.Models.ManifestModels.OrganizationModels;

namespace IUDICO.CourseManagement.Models.ManifestModels
{
    [Serializable]
    [XmlRoot(SCORM.Manifest, Namespace = SCORM.ImscpNamespaceV1p3)]
    public class Manifest
    {
        public Manifest()
        {
            Organizations = new Organizations();
            Resources = new ResourceModels.Resources();
            Metadata = new ManifestMetadata();
        }

        [XmlElement(SCORM.Metadata, Namespace = SCORM.ImscpNamespaceV1p3)]
        public ManifestMetadata Metadata;

        [XmlElement(SCORM.Organizations, Namespace=SCORM.ImscpNamespaceV1p3)]
        public Organizations Organizations;

        [XmlElement(SCORM.Resources, Namespace = SCORM.ImscpNamespaceV1p3)]
        public ResourceModels.Resources Resources;

        public void Serialize(StreamWriter writer)
        {
            var xs = new XmlSerializer(typeof(Manifest));

            var xsn = new XmlSerializerNamespaces();
            xsn.Add(SCORM.Adlcp, SCORM.AdlcpNamespaceV1p3);
            xsn.Add(SCORM.Imsss, SCORM.ImsssNamespace);
            xsn.Add(SCORM.Adlseq, SCORM.AdlseqNamespace);
            xsn.Add(SCORM.Adlnav, SCORM.AdlnavNamespace);
            xsn.Add(SCORM.Imsss, SCORM.ImsssNamespace);

            xs.Serialize(writer, this, xsn);
        }
    }
}