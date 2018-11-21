

using System;
using System.Collections.Generic;
using System.Text;

namespace Online_DataAccessLayer
{
    public static class GlobalsVar
    {
        #region Database Constant

        public const string Date_Format = "MM/dd/yyyy";

        #endregion
       
        #region Custom Replace Function
        public static string Replace(string strSource)
        {
            return strSource.Replace("'", "`");
        }
        #endregion
    }
    
}
