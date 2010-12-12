﻿using System;
using System.Xml.Serialization;

namespace IUDICO.CourseManagement.Models.Manifest.Organization
{
    [Serializable]
    public class Map
    {
        [XmlAttribute("targetID")]
        public string TargetID;

        [XmlAttribute("readSharedData")]
        public string readSharedData; // = "true";

        [XmlAttribute("writeSharedData")]
        public string WriteSharedData; // = "true";
    }
}