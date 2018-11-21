using System;
using System.Data;
using System.Configuration;
using System.Web;
 
using System.Collections;
/// <summary>
/// Summary description for clsQueryBuilder
/// </summary>
public static class SQLQueryBuilder
{
    #region To Generate the SQL Insert Query.
    /// <summary>
    ///  This method generates the sql insert query
    /// </summary>
    /// <param name="strTableName">strTableName, object which contains the table name</param>
    /// <param name="htTableValues">htTableValues, object which contains all the Field names and values</param>
    /// <returns>Query as string</returns>
    public static string Generate_InsertQuery(string strTableName, Hashtable htTableValues)
    {
        string strFieldNames = "";
        string strFiledValues = "";
        string strInsertQuery = "";

        foreach (DictionaryEntry Item in htTableValues)
        {
            strFieldNames = strFieldNames + Item.Key + ",";
            strFiledValues = strFiledValues + "'" + Item.Value + "',";
        }

        strInsertQuery = " insert into " + strTableName + "( " + strFieldNames.Substring(0, strFieldNames.Length - 1) + ") values (" + strFiledValues.Substring(0, strFiledValues.Length - 1) + " )";

        return strInsertQuery;
    }

    #endregion

    #region To Generate the SQL Select Query.
    /// <summary>
    ///  This method generates the sql select query
    /// </summary>
    /// <param name="strTableName">strTableName, object which contains the table name</param>
    /// <param name="strFieldNames">strFieldNames, object which contains all the Field names</param>
    /// <param name="strTableCondition">strTableCondition, object which contains Where conditions, if any</param>
    /// <param name="strTableOrderby">strTableOrderby, object which contains order by clause, if any</param>
    /// <returns>Query as string</returns>
    public static string Generate_SelectQuery(string strTableName, string strFieldNames, string strTableCondition, string strTableOrderby)
    {
        string strSelectQuery = "";
        strSelectQuery = "select " + strFieldNames + " from " + strTableName + "";

        if (strTableCondition != "")
        {
            strSelectQuery = strSelectQuery + " where " + strTableCondition + "";
        }

        if (strTableOrderby != "")
        {
            strSelectQuery = strSelectQuery + " order by " + strTableOrderby + "";
        }

        return strSelectQuery;
    }
    #endregion

    #region To Generate the SQL Delete Query.
    /// <summary>
    ///  This method generates the sql delete query
    /// </summary>
    /// <param name="strTableName">strTableName, object which contains the table name</param>
    /// <param name="strTableCondition">strTableCondition, object which contains Where conditions, if any</param>
    /// <returns>Query as string</returns>
    public static string Generate_DeleteQuery(string strTableName, string strTableCondition)
    {
        string strDeleteQuery = "";

        strDeleteQuery = "delete from " + strTableName + "";

        if (strTableCondition != "")
        {
            strDeleteQuery = strDeleteQuery + " where " + strTableCondition + "";
        }

        return strDeleteQuery;
    }
    #endregion

    #region To Generate the SQL Update Query.
    /// <summary>
    ///  This method generates the sql update query
    /// </summary>
    /// <param name="strTableName">strTableName, object which contains the table name</param>
    /// <param name="htTableValues">htTableValues, object which contains all the Field names and values</param>
    /// <param name="strTableCondition">strTableCondition, object which contains Where conditions, if any</param>
    /// <returns>Query as string</returns>
    public static string Generate_UpdateQuery(string strTableName, Hashtable htTableValues, string strTableCondition)
    {
        string strFieldData = "";
        string strUpdateQuery = "";

        foreach (DictionaryEntry Item in htTableValues)
        {
            strFieldData = strFieldData + Item.Key + "='" + Item.Value + "',";
        }

        strUpdateQuery = "update " + strTableName + " set " + strFieldData.Substring(0, strFieldData.Length - 1) + "";

        if (strTableCondition != "")
        {
            strUpdateQuery = strUpdateQuery + " where " + strTableCondition + "";
        }

        return strUpdateQuery;

    }
    #endregion
}
