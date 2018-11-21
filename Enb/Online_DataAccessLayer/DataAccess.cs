using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using Online_TransportLayer;


namespace Online_DataAccessLayer
{
    public class DataAccess
    {
        #region Member Varibale
        //Creating the variable for Db2DataAccess
        private static DataAccess _DataAccess;

        #region Error Details

        private string _ErrorMsg = string.Empty;
        private string _ErrorTrace = string.Empty;

        #endregion

        #endregion

        #region Constructor

        /// <summary>
        /// private Constructor, for making the class as singleton
        /// </summary>
        public DataAccess()
        {
        }


        #endregion

        #region Instance Creation

        /// <summary>
        /// creates the single instance of DB2DataAccess object that can be used by other class
        /// </summary>
        /// <returns>CADB2DataAccess, object the current instance of the CADB2DataAccess</returns>
        public static DataAccess GetInstance()
        {
            if (_DataAccess == null)
            {
                _DataAccess = new DataAccess();
            }
            return _DataAccess;
        }

        #endregion


        #region My Methods

        //Add Cloud User Registration Details
        public DataTable Cloud_UserReg_addCloudUserInfo(string CloudUserReg_Name, string CloudUserReg_Email, string CloudUserReg_Password, string CloudUserReg_DOB, string CloudUserReg_Phone, string CloudUserReg_City, string CloudUserReg_State, string CloudUserReg_Country)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@CloudUserReg_Name",CloudUserReg_Name);
            ht.Add("@CloudUserReg_Email",CloudUserReg_Email);
            ht.Add("@CloudUserReg_Password",CloudUserReg_Password);
            ht.Add("@CloudUserReg_DOB",CloudUserReg_DOB);
            ht.Add("@CloudUserReg_Phone",CloudUserReg_Phone);
            ht.Add("@CloudUserReg_City",CloudUserReg_City);
            ht.Add("@CloudUserReg_State",CloudUserReg_State);
            ht.Add("@CloudUserReg_Country", CloudUserReg_Country);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Cloud_UserReg_addCloudUserInfo");

        }

        //Authenticate Cloud User Authencate
        public DataTable CloudUserReg_Authencate(string CloudUserReg_Email,string CloudUserReg_Password)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@CloudUserReg_Email", CloudUserReg_Email);
            ht.Add("@CloudUserReg_Password", CloudUserReg_Password);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "CloudUserReg_Authencate");
        }

        //Get To Be Approved Clou User
        public DataTable Cloud_UserReg_get_User_Info()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Cloud_UserReg_get_User_Info");
        }

        //Approve Cloud User
        public bool Cloud_UserReg_Approve_Cloud_User(int CloudUserReg_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@CloudUserReg_Id", CloudUserReg_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Cloud_UserReg_Approve_Cloud_User");
        }
        
        #endregion



        //Delete Cloud User 
        public bool Cloud_UserReg_Delete_User_Info(int CloudUserReg_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@CloudUserReg_Id", CloudUserReg_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Cloud_UserReg_Delete_User_Info");
        }

        //Get All Registered Users
        public DataTable Cloud_UserReg_get_Registered_User_Info()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Cloud_UserReg_get_Registered_User_Info");
        }

        //Register TPA
        public DataTable TPA_addTPAInfo(string TPA_Name, string TPA_Email, string TPA_Password, string TPA_Phone, string TPA_City, string TPA_State, string TPA_Country, int type)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@TPA_Name", TPA_Name);
            ht.Add("@TPA_Email", TPA_Email);
            ht.Add("@TPA_Password", TPA_Password);
            ht.Add("@TPA_Phone", TPA_Phone);
            ht.Add("@TPA_City", TPA_City);
            ht.Add("@TPA_State", TPA_State);
            ht.Add("@TPA_Country", TPA_Country);
            ht.Add("@type", type);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "TPA_addTPAInfo");
        }

        //TPA Authenticate
        public DataTable TPA_Authenticate(string TPA_Email, string TPA_Password)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@TPA_Email", TPA_Email);
            ht.Add("@TPA_Password", TPA_Password);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "TPA_Authenticate");
        }

        //Get TPA Info
        public DataTable TPA_Get_TPA_Info()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "TPA_Get_TPA_Info");
        }

        //Add Files
        public bool Files_add_File(string User, int TPA, string FileName, string UploadFile, string Key)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@User", User);
            ht.Add("@TPA", TPA);
            ht.Add("@FileName", FileName);
            ht.Add("@UploadFile", UploadFile);
            ht.Add("@Key", Key);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Files_add_File");
        }

        public DataTable Cloud_UserReg_get__User_Info_By_Email(string email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@email", email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Cloud_UserReg_get__User_Info_By_Email");
        }

        public bool Cloud_UserReg_get_Update_User_Info(int CloudUserReg_Id, string CloudUserReg_Name, string CloudUserReg_Password, string CloudUserReg_DOB, string CloudUserReg_Phone, string CloudUserReg_City, string CloudUserReg_State, string CloudUserReg_Country)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@CloudUserReg_Id", CloudUserReg_Id);
            ht.Add("@CloudUserReg_Name", CloudUserReg_Name);
            
            ht.Add("@CloudUserReg_Password", CloudUserReg_Password);
            ht.Add("@CloudUserReg_DOB", CloudUserReg_DOB);
            ht.Add("@CloudUserReg_Phone", CloudUserReg_Phone);
            ht.Add("@CloudUserReg_City", CloudUserReg_City);
            ht.Add("@CloudUserReg_State", CloudUserReg_State);
            ht.Add("@CloudUserReg_Country", CloudUserReg_Country);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Cloud_UserReg_get_Update_User_Info");
        }

        public DataTable Files_Get_Pending_File(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_Pending_File");
        }

        public DataTable Files_Get_TPA_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_TPA_Files");
        }

        public bool TPARequest_add_TPA_Request(int Files_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "TPARequest_add_TPA_Request");
        }

        public DataTable Files_Get_TPA_Requsted_Sent_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_TPA_Requsted_Sent_Files");
        }

        public DataTable Files_Get_TPA_Requst_Accepted_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_TPA_Requst_Accepted_Files");
        }

        public bool TPARequest_Update_TPA_Request(int Files_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "TPARequest_Update_TPA_Request");
        }

        public DataTable Files_get_File_By_Id(int Files_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_get_File_By_Id");
        }

        public bool ReuploadFiles_add_File(int Files_Id, string UploadFile)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            ht.Add("@UploadFile", UploadFile);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "ReuploadFiles_add_File");
        }

        public DataTable Files_Get_Cloud_User_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_Cloud_User_Files");
        }

        public DataTable Files_Get_Cloud_User_Approved_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_Cloud_User_Approved_Files");
        }

        public DataTable Files_Get_All_Approved_Files()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_All_Approved_Files");
        }

        public DataTable Files_Get_All_Processing_Files()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Files_Get_All_Processing_Files");
        }



        public bool UserRequest_add_User_File_Request(int Files_Id, string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "UserRequest_add_User_File_Request");
        }

        public DataTable UserRequest_Check_User_File_Request_By_Id(int Files_Id, string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "UserRequest_Check_User_File_Request_By_Id");
        }

        public DataTable UserRequest_Get_User_File_Request_By_Email(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "UserRequest_Get_User_File_Request_By_Email");
        }

        public bool UserRequest_Accept_User_File_Request(int Files_Id, string Email, string SenderEmail)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Files_Id", Files_Id);
            ht.Add("@Email", Email);
            ht.Add("@SenderEmail", SenderEmail);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "UserRequest_Accept_User_File_Request");
        }

        public DataTable UserRequest_Get_User_Request_Accepted_Files(string Email)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Email", Email);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "UserRequest_Get_User_Request_Accepted_Files");
        }

        public DataTable ReuploadFiles_get_File_By_Id(int Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "ReuploadFiles_get_File_By_Id");
        }

        public bool Files_update_File(int F_Id, string uploadFilepath)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@F_Id", F_Id);
            ht.Add("@uploadFilepath", uploadFilepath);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Files_update_File");
        }

        public DataTable Get_TPA_By_Id(int F_Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@F_Id", F_Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Get_TPA_By_Id");
        }

        public bool TPA_UpdateTPAInfo(int Id, string TPA_Name, string TPA_Email, string TPA_Password, string TPA_Phone, string TPA_City, string TPA_State, string TPA_Country)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            ht.Add("@TPA_Name", TPA_Name);
            ht.Add("@TPA_Email", TPA_Email);
            ht.Add("@TPA_Password", TPA_Password);
            ht.Add("@TPA_Phone", TPA_Phone);
            ht.Add("@TPA_City", TPA_City);
            ht.Add("@TPA_State", TPA_State);
            ht.Add("@TPA_Country", TPA_Country);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "TPA_UpdateTPAInfo");
        }

        public bool Cloud_TPA_Approve(int Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Cloud_TPA_Approve");
        }

        public DataTable Cloud_get_TPA_Check_Info()
        {
            Hashtable ht = new Hashtable();

            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Cloud_get_TPA_Check_Info");
        }

        public DataTable TPA_Get_Approved_TPA_Info()
        {
            return SQlDataAccess.GetInstance().GetDataTable("select * from dbo.TPA where TPA_IsActive = 'true'");
        }
    }
}