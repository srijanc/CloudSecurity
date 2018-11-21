using System;
using System.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Collections;


namespace Online_DataAccessLayer
{
    public class SQlDataAccess
    {
        #region Member Varibale

        //Creating the variable for Db2DataAccess
        private static SQlDataAccess _SQlDataAccess;
        private string _ScalarValue = string.Empty;
        SqlDataReader objDataReader;

        #region Connection Details

        private string _ConnectionString = ConfigurationManager.ConnectionStrings["Max"].ToString();
        private string _Owner = string.Empty;

        #endregion

        #region Error Details

        private string _ErrorMsg = string.Empty;
        private string _ErrorTrace = string.Empty;

        #endregion

        #endregion

        #region Properties

        /// <summary>
        /// se/get the errpr masg properties
        /// </summary>
        public string ErrorMsg { get { return _ErrorMsg; } }
        public string ErrorTrace { get { return _ErrorTrace; } }

        #endregion

        #region Constructor

        /// <summary>
        /// private Constructor, for making the class as singleton
        /// </summary>
        private SQlDataAccess()
        {
        }

        #endregion

        #region Instance Creation

        /// <summary>
        /// creates the single instance of DB2DataAccess object that can be used by other class
        /// </summary>
        /// <returns>DB2DataAccess, object the current instance of the DB2DataAccess</returns>
        public static SQlDataAccess GetInstance()
        {
            if (_SQlDataAccess == null)
            {
                _SQlDataAccess = new SQlDataAccess();
            }
            return _SQlDataAccess;
        }

        #endregion

        #region Connection Methods

        /// <summary>
        /// Connecting to the database
        /// </summary>
        /// <returns>will return connection string</returns>
        private string ConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["APS"].ToString();
        }



        /// <summary>
        /// Opening the database  connection
        /// </summary>
        /// <returns>true if connection will open otherwise will return false</returns>
        private bool OpenConnection()
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            try
            {
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    conn.Close();
                    return true;
                }
            }
            catch (Exception e)
            {

                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Checking the database validation connection towards the database settings(database,userId,password,owner)
        /// </summary>
        /// <param name="database">string</param>
        /// <param name="owner">string</param>
        /// <param name="userID">user id</param>
        /// <param name="password">user password</param>
        /// <returns>true or false</returns>
        public bool ValidConnection(string database, string owner, string userID, string password)
        {

            _Owner = owner;

            _ConnectionString = ConnectionString();

            return OpenConnection();
        }

        /// <summary>
        /// Checking the database validation connection towards the database settings(database,owner)
        /// </summary>
        /// <param name="database">database name</param>
        /// <param name="owner">owner</param>
        /// <returns>if valid it will return true otherwise false</returns>
        public bool ValidConnection(string database, string owner)
        {

            _Owner = owner;
            _ConnectionString = ConnectionString();
            return OpenConnection();
        }

        /// <summary>
        /// Changing the ownership
        /// </summary>
        /// <param name="sql">sql query string</param>
        /// <returns>will return string</returns>
        private string ChangeOwner(string sql)
        {
            return (_Owner == string.Empty) ? sql : sql.Replace("parisp.", _Owner);
        }
        #endregion

        #region  Methods

        /// <summary>
        /// Geting the data into the table from the database 
        /// </summary>
        /// <param name="sql">sql query string</param>
        /// <returns>table</returns>
        public DataTable GetDataTable(string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            DataTable dt = new DataTable();
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlDataAdapter da = new SqlDataAdapter(sql2, _ConnectionString))
                {
                    da.Fill(dt);
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
            }
            return dt;
        }

        /// <summary>
        /// Geting the data into the dataset from the database 
        /// </summary>
        /// <param name="sql">sql query string</param>
        /// <returns>datset</returns>
        public DataSet GetDataSet(string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            DataSet ds = new DataSet();
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlDataAdapter da = new SqlDataAdapter(sql2, _ConnectionString))
                {

                    da.Fill(ds);
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();

                ds = null;
            }

            return ds;
        }

        /// <summary>
        /// Executing the Db2command 
        /// </summary>
        /// <param name="sql">sql query string</param>
        /// <returns>true,if executed successfully otherwise return false</returns>
        public bool ExecuteCommandSql(string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql2, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                    return true;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Executing the Db2command 
        /// </summary>
        /// <param name="command">command object</param>
        /// <returns>true,if executed successfully otherwise return false</returns>
        public bool ExecuteCommand(SqlCommand command)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                command.CommandText = ChangeOwner(command.CommandText);
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    command.Connection = conn;
                    command.ExecuteNonQuery();
                    conn.Close();
                    return true;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// This method will start the transaction
        /// </summary>
        /// <returns>will return transaction object</returns>
        public SqlTransaction StartTransaction()
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            try
            {
                SqlConnection conn = new SqlConnection(_ConnectionString);
                conn.Open();
                SqlTransaction transaction = conn.BeginTransaction();
                return transaction;
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return null;
            }
        }

        /// <summary>
        /// This method used to rollback the transaction
        /// </summary>
        /// <param name="t">transaction object</param>
        /// <returns>true,if opration successfull otherwise return false</returns>
        public bool RollbackTransaction(SqlTransaction transaction)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            try
            {
                transaction.Rollback();
                transaction.Connection.Close();
                return true;
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// This method used to commit the transaction
        /// </summary>
        /// <param name="t">transaction object</param>
        /// <returns>true,if opration successfull otherwise return false</returns>
        public bool CommitTransaction(SqlTransaction transaction)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            try
            {
                transaction.Commit();
                return true;
            }
            catch (Exception e)
            {
                RollbackTransaction(transaction);
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Geting the datatable from the database
        /// </summary>
        /// <param name="t">transaction object</param>
        /// <param name="sql">sql query string</param>
        /// <returns>datatable</returns>
        public DataTable GetDataTable(SqlTransaction transaction, string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            DataTable dt = new DataTable();
            if (transaction == null) return dt;
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlCommand dc = new SqlCommand(sql2, transaction.Connection, transaction))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(dc))
                    {
                        da.Fill(dt);
                    }
                }
            }
            catch (Exception e)
            {
                RollbackTransaction(transaction);
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
            }
            return dt;
        }

        /// <summary>
        /// Geting the dataset from the database
        /// </summary>
        /// <param name="t">transaction object</param>
        /// <param name="sql">sql query string</param>
        /// <returns>dataset</returns>
        public DataSet GetDataSet(SqlTransaction transaction, string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            DataSet ds = null;
            if (transaction == null) return ds;
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlCommand dc = new SqlCommand(sql2, transaction.Connection, transaction))
                {

                    using (SqlDataAdapter da = new SqlDataAdapter(dc))
                    {
                        ds = new DataSet();
                        da.Fill(ds);
                    }
                }
            }
            catch (Exception e)
            {
                RollbackTransaction(transaction);
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
            }
            return ds;
        }

        /// <summary>
        /// Executing the Db2command 
        /// </summary>
        /// <param name="t">transaction object</param>
        /// <param name="sql">sql query string</param>
        /// <returns>true,if opration successfull otherwise return false</returns>
        public bool ExecuteCommandSql(SqlTransaction transaction, string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (transaction == null) return false;
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlCommand cmd = new SqlCommand(sql2, transaction.Connection, transaction))
                {
                    cmd.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception e)
            {
                RollbackTransaction(transaction);
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Executing the Db2command 
        /// </summary>
        /// <param name="transaction">transaction</param>
        /// <param name="command">command object</param>
        /// <returns>true,if opration successfull otherwise return false</returns>
        public bool ExecuteCommand(SqlTransaction transaction, SqlCommand command)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (transaction == null) return false;
            try
            {
                command.CommandText = ChangeOwner(command.CommandText);
                command.Connection = transaction.Connection;
                command.Transaction = transaction;
                command.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                RollbackTransaction(transaction);
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Executing the Db2Scalar 
        /// </summary>
        /// <param name="sql">sql query string</param>
        /// <returns>string,if executed successfully otherwise return Null</returns>
        public string ExecuteScalarSql(string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                string sql2 = ChangeOwner(sql);
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql2, conn))
                    {
                        _ScalarValue = cmd.ExecuteScalar().ToString();
                    }
                    if (_ScalarValue == string.Empty)
                    {
                        _ScalarValue = "";
                    }

                    conn.Close();
                    return _ScalarValue;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                _ScalarValue = "";
                return _ScalarValue;
            }
        }

        /// <summary>
        /// Executing the Db2Reader 
        /// </summary>
        /// <param name="strQuery">strQuery query string</param>
        /// <returns>SqlDataReader</returns>
        public SqlDataReader ExecuteDatareader(string strQuery)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                string sql2 = ChangeOwner(strQuery);
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql2, conn))
                    {
                        objDataReader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                    }

                    conn.Close();
                    return objDataReader;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                _ScalarValue = "";
                return objDataReader;
            }
        }

        /// <summary>
        /// Executing the Stored Procedure 
        /// </summary>
        /// <param name="sql">sql, stored procedure name</param>
        /// <param name="htParameters">htParameters, parameters for stored procedure</param>
        /// <returns>string,if executed successfully otherwise return Null</returns>
        public bool ExecuteStoredProcedure(Hashtable htParameters, string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        foreach (DictionaryEntry objParams in htParameters)
                        {
                            cmd.Parameters.Add(objParams.Key.ToString(), objParams.Value);
                        }
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                    return true;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return false;
            }
        }

        /// <summary>
        /// Executing the Stored Procedure 
        /// </summary>
        /// <param name="sql">sql, stored procedure name</param>
        /// <param name="htParameters">htParameters, parameters for stored procedure</param>
        /// <returns>string,if executed successfully otherwise return Null</returns>
        public DataTable ExecuteStoredProcedureSelect(Hashtable htParameters, string sql)
        {
            _ErrorMsg = string.Empty;
            _ErrorTrace = string.Empty;
            DataTable dt = new DataTable();
            if (_ConnectionString == string.Empty)
            {
                _ConnectionString = ConnectionString();
            }
            try
            {
                using (SqlConnection conn = new SqlConnection(_ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        cmd.CommandText = sql;
                        cmd.CommandType = CommandType.StoredProcedure;
                        foreach (DictionaryEntry objParams in htParameters)
                        {
                            cmd.Parameters.Add(objParams.Key.ToString(), objParams.Value);
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                    conn.Close();
                    return dt;
                }
            }
            catch (Exception e)
            {
                _ErrorMsg = e.Message;
                _ErrorTrace = e.ToString();
                return dt;
            }
        }

        #endregion
    }
}