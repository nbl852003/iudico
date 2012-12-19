﻿using System;
using System.Collections.Generic;
using System.Xml.Serialization;

namespace IUDICO.CourseManagement.Models.ManifestModels.ResourceModels
{
    [Serializable]
    public class Resources
    {
        public Resources()
        {
            this.ResourcesList = new List<Resource>();
        }

        #region XmlElements

        [XmlElement(SCORM.Resource, Namespace = SCORM.ImscpNamespaceV1P3)]
        public List<Resource> ResourcesList;

        #endregion
    }
}