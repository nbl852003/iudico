﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace IUDICO.Security.ViewModels
{
    public class BanAddComputerViewModel
    {
        [Required(ErrorMessage = "ComputerID is required")]
        [StringLength(11, ErrorMessage = "Must be less than 11 characters")]
        public string ComputerIP { get; set; }
    }
}