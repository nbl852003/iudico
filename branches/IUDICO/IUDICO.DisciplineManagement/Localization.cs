﻿using IUDICO.Common;

namespace IUDICO.DisciplineManagement
{
    public class Localization
    {
        private static LocalizationMessageProvider provider = new LocalizationMessageProvider("DisciplineManagement");

        public static string GetMessage(string search)
        {
            return provider.GetMessage(search);
        }
    }
}