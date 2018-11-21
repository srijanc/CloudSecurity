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

        #region Authenticate

        public DataTable Authenticate(string Username, string Password)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Username", Username);
            ht.Add("@Password", Password);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_Authenticate");
        }

        #endregion

        #region Add Enquiry

        public bool AddEnquiry(string Name, string EmailID, string phoneno, string subject, string Enquiry)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Name", Name);
            ht.Add("@EmailID", EmailID);
            ht.Add("@phoneno", phoneno);
            ht.Add("@subject", subject);
            ht.Add("@Enquiry", Enquiry);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_AddEnquiry");
        }

        #endregion          

        #region Check Password

        public DataTable CheckPassword(string OldPassword)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Password", OldPassword);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_CheckPassword");
        }

        #endregion

        #region ChangePassword

        public bool ChangePassword(string Username, string NewPassword)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Username", Username);
            ht.Add("@Password", NewPassword);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_ChangePassword");
        }

        #endregion

        #region Get Enquiry

        public DataTable GetEnquiry()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetEnquiry");
        }

        #endregion

        #region Get Enquiry On ID

        public DataTable GetEnquiryID(int Id)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", Id);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetEnquiryID");
        }

        #endregion

        #region Add Flash News

        public bool AddFlashNews(string Title, string Description)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Title", Title);
            ht.Add("@Description", Description);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_AddFlashNews");
        }

        #endregion

        #region Get All Flash News

        public DataTable GetFlashNews()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetFlashNews");
        }

        #endregion

        #region Get Flash News On ID

        public DataTable GetFlashNewsID(int ID)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", ID);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetFlashNewsID");
        }

        #endregion

        #region Get Top 3 Flash News

        public DataTable GetTopFlashNews()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetTopFlashNews");
        }

        #endregion     

        #region Edit Flash News

        public bool UpdateFlashNews(string Title, string Description, int ID)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Title", Title);
            ht.Add("@Description", Description);
            ht.Add("@ID", ID);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_UpdateFlashNews");
        }

        #endregion

        #region Delete Flash News

        public bool DeleteFlashNews(int ID)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@ID", ID);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_DeleteFlashNews");
        }

        #endregion

        #region Add Flash Video

        public bool AddFlashVideo(string FlashVideo, int Videotype)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@FlashVideo", FlashVideo);
            ht.Add("@Videotype", Videotype);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_AddFlashVideo");
        }

        #endregion

        #region Get All Flash Videos

        public DataTable GetFlashVideos()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetFlashVideos");
        }

        #endregion

        #region Get Flash Videos On Type

        public DataTable GetFlashVideosTypeID(int TypeID)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", TypeID);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetFlashVideosTypeID");
        }

        #endregion

        #region Delete Flash Videos

        public bool DeleteFlashVideos(int ID)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", ID);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_DeleteFlashVideos");
        }

        #endregion

        #region Update Flash Videos

        public bool UpdateFlashVideos(int ID,int VideoType,string VideoName)
        {
            Hashtable ht = new Hashtable();
            ht.Add("@Id", ID);
            ht.Add("@FlashVideos", VideoName);
            ht.Add("@VideoType", VideoType);
            return SQlDataAccess.GetInstance().ExecuteStoredProcedure(ht, "Max_UpdateFlashVideos");
        }

        #endregion

        #region Get All Video Type

        public DataTable GetVideoType()
        {
            Hashtable ht = new Hashtable();
            return SQlDataAccess.GetInstance().ExecuteStoredProcedureSelect(ht, "Max_GetVideoType");
        }

        #endregion

        #endregion
    }
}