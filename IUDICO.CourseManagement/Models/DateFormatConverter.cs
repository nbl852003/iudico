﻿using System;
using System.Collections.Generic;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Shared;
using IUDICO.CourseManagement.Controllers;
using IUDICO.CourseManagement.Models.ManifestModels;
using IUDICO.CourseManagement.Helpers;
using IUDICO.CourseManagement;
using IUDICO.CourseManagement.Models.Storage;
using IUDICO.Common.Models.Services;

namespace IUDICO.CourseManagement.Models
{
    public static class DateFormatConverter
    {
        public static string DataConvert(DateTime date)
        {
            string dataformat = string.Empty;
            DateTime now = DateTime.Now;
            if (date.Year < now.Year)
            {
                dataformat = "{0:MM/dd/yy}";
            }
            else if (date.Day < now.Day)
            {
                dataformat = "{0:MMM d}";
            }
            else
            {
                dataformat = "{0:t}";
            }
            return String.Format(dataformat, date);
        }
    }
}
