﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using System.Xml.Serialization;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Attributes;
using IUDICO.Common;

namespace IUDICO.CourseManagement.Models.ManifestModels.SequencingModels.RollupModels
{
    [MetadataType(typeof(Metadata))]
    public partial class RollupRules : NodeProperty
    {

        private sealed class Metadata
        {
            [DisplayName("Rollup Objective Satisfied")]
            public bool RollupObjectiveSatisfied { get; set; }// = true;
            [DisplayName("Rollup Objective Satisfied")]
            public bool RollupProgressCompletion { get; set; } // = true;
            [DisplayName("Objective Measure Weight")]
            public float ObjectiveMeasureWeight { get; set; }

            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int NodeId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int CourseId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public string Type { get; set; }
        }
    }

    [MetadataType(typeof(Metadata))]
    public partial class RollupRule : NodeProperty
    {
        public IEnumerable<SelectListItem> ChildActivitySetList
        {
            get
            {
                var list = new List<SelectListItem>
                               {
                                   new SelectListItem
                                       {
                                           Text = Enum.GetName(typeof (ChildActivitySet), ChildActivitySet.All),
                                           Value = ChildActivitySet.All.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text = Enum.GetName(typeof (ChildActivitySet), ChildActivitySet.Any),
                                           Value = ChildActivitySet.Any.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text = Enum.GetName(typeof (ChildActivitySet), ChildActivitySet.AtLeastCount),
                                           Value = ChildActivitySet.AtLeastCount.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text =
                                               Enum.GetName(typeof (ChildActivitySet), ChildActivitySet.AtLeastPercent),
                                           Value = ChildActivitySet.AtLeastPercent.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text = Enum.GetName(typeof (ChildActivitySet), ChildActivitySet.None),
                                           Value = ChildActivitySet.None.ToString()
                                       }
                               };

                return list.AsEnumerable();
            }
        }

        private sealed class Metadata
        {
            [DisplayName("Child Activity Set")]
            [DropDownList(SourceProperty = "ChildActivitySetList")]
            public ChildActivitySet ChildActivitySet { get; set; }
            [DisplayName("Minimum")]
            public int MinimumCount { get; set; } // = 0;
            [DisplayName("Maximum")]
            public double MinimumPercent { get; set; } // = 0.0000;

            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int NodeId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int CourseId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public string Type { get; set; }
        }
    }

    [MetadataType(typeof(Metadata))]
    public partial class RollupConsiderations : NodeProperty
    {
        public IEnumerable<SelectListItem> RequiredList
        {
            get
            {
                var list = new List<SelectListItem>
                               {
                                   new SelectListItem
                                       {
                                           Text =Localization.getMessage(Enum.GetName(typeof (Required), Required.Always)),
                                           Value = Required.Always.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text =Localization.getMessage(Enum.GetName(typeof (Required), Required.IfAttempted)),
                                           Value = Required.IfAttempted.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text = Localization.getMessage(Enum.GetName(typeof (Required), Required.IfNotSkipped)),
                                           Value = Required.IfNotSkipped.ToString()
                                       },
                                   new SelectListItem
                                       {
                                           Text = Localization.getMessage(Enum.GetName(typeof (Required), Required.IfNotSuspended)),
                                           Value = Required.IfNotSuspended.ToString()
                                       }
                               };

                return list.AsEnumerable();
            }
        }

        private sealed class Metadata
        {
            [DisplayName("Required For Satisfied")]
            [DropDownList(SourceProperty = "RequiredList")]
            public Required RequiredForSatisfied { get; set; } // = Required.Always;
            [DisplayName("Required For Not Satisfied")]
            [DropDownList(SourceProperty = "RequiredList")]
            public Required RequiredForNotSatisfied { get; set; } // = Required.Always;
            [DisplayName("Required For Completed")]
            [DropDownList(SourceProperty = "RequiredList")]
            public Required RequiredForCompleted { get; set; }// = Required.Always;
            [DisplayName("Required For Incomplete")]
            [DropDownList(SourceProperty = "RequiredList")]
            public Required RequiredForIncomplete { get; set; } // = Required.Always;
            [DisplayName("Measure Satisfaction If Active")]
            public bool MeasureSatisfactionIfActive { get; set; } // = true;

            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int NodeId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public int CourseId { get; set; }
            [ScaffoldColumn(false)]
            [XmlIgnore]
            public string Type { get; set; }
        }
    }
}