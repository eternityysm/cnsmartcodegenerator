//  Copyright © Hewlett-Packard Company. All Rights Reserved.
// </copyright>

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

public abstract class SqlDbHelper
{
	//Database Connection String.		
	public static string connectionString;

	public SqlDbHelper()
	{
	}

	#region "Public Methods"
	/// <summary>
	/// Determine whether there is a field in a table
	/// </summary>
	/// <param name="tableName">Table Name</param>
	/// <param name="columnName">Column Name</param>
	/// <returns>True or false</returns>
	public static bool ColumnExists(string tableName, string columnName)
	{
		string sql = "select count(1) from syscolumns where [id]=object_id('" + tableName + "') and [name]='" + columnName + "'";
		object res = GetSingle(sql);
		if (res == null) {
			return false;
		}
		return Convert.ToInt32(res) > 0;
	}

	public static int GetMaxID(string FieldName, string TableName)
	{
		string strsql = "select max(" + FieldName + ")+1 from " + TableName;
		object obj = GetSingle(strsql);
		if (obj == null) {
			return 1;
		} else {
			return int.Parse(obj.ToString());
		}
	}

	public static bool Exists(string strSql)
	{
		object obj = GetSingle(strSql);
		int cmdresult = 0;
		if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
			cmdresult = 0;
		} else {
			cmdresult = int.Parse(obj.ToString());
		}
		if (cmdresult == 0) {
			return false;
		} else {
			return true;
		}
	}

	/// <summary>
	/// Table whether exist
	/// </summary>
	/// <param name="TableName"></param>
	/// <returns></returns>
	/// 
	public static bool TabExists(string TableName)
	{
		string strsql = "select count(*) from sysobjects where id = object_id(N'[" + TableName + "]') and OBJECTPROPERTY(id, N'IsUserTable') = 1";
		object obj = GetSingle(strsql);
		int cmdresult = 0;
		if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
			cmdresult = 0;
		} else {
			cmdresult = int.Parse(obj.ToString());
		}
		if (cmdresult == 0) {
			return false;
		} else {
			return true;
		}
	}
	public static bool Exists(string strSql, params SqlParameter[] cmdParms)
	{
		object obj = GetSingle(strSql, cmdParms);
		int cmdresult = 0;
		if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
			cmdresult = 0;
		} else {
			cmdresult = int.Parse(obj.ToString());
		}
		if (cmdresult == 0) {
			return false;
		} else {
			return true;
		}
	}

	#endregion

	#region "Exec SQL"

	/// <summary>
	/// Execute SQL statements, the return of the number of records
	/// </summary>
	/// <param name="SQLString">SQL</param>
	/// <returns>the return of the number of records</returns>
	public static int ExecuteSql(string SQLString)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand(SQLString, connection)) {
				try {
					connection.Open();
					int rows = cmd.ExecuteNonQuery();
					return rows;
				} catch (System.Data.SqlClient.SqlException e) {
					connection.Close();
					throw e;
				}
			}
		}
	}


	public static int ExecuteSqlByTime(string SQLString, int Times)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand(SQLString, connection)) {
				try {
					connection.Open();
					cmd.CommandTimeout = Times;
					int rows = cmd.ExecuteNonQuery();
					return rows;
				} catch (System.Data.SqlClient.SqlException e) {
					connection.Close();
					throw e;
				}
			}
		}
	}


	/// <summary>
	/// Perform multiple SQL statements, implement database transactions.
	/// </summary>
	/// <param name="SQLStringList">Multiple SQL statements</param>		
	public static int ExecuteSqlTran(List<String> SQLStringList)
	{
		using (SqlConnection conn = new SqlConnection(connectionString)) {
			conn.Open();
			SqlCommand cmd = new SqlCommand();
			cmd.Connection = conn;
			SqlTransaction tx = conn.BeginTransaction();
			cmd.Transaction = tx;
			try {
				int count = 0;
				for (int n = 0; n <= SQLStringList.Count - 1; n++) {
					string strsql = SQLStringList[n];
					if (strsql.Trim().Length > 1) {
						cmd.CommandText = strsql;
						count += cmd.ExecuteNonQuery();
					}
				}
				tx.Commit();
				return count;
			} catch {
				tx.Rollback();
				return 0;
			}
		}
	}
	/// <summary>
	/// Execute a stored procedure parameters with the SQL statement.
	/// </summary>
	/// <param name="SQLString">SQL</param>
	/// <param name="content">Parameters of content, such as a complex field is the format of articles, special symbols, you can add this way</param>
	/// <returns>the return of the number of records</returns>
	public static int ExecuteSql(string SQLString, string content)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			SqlCommand cmd = new SqlCommand(SQLString, connection);
			System.Data.SqlClient.SqlParameter myParameter = new System.Data.SqlClient.SqlParameter("@content", SqlDbType.NText);
			myParameter.Value = content;
			cmd.Parameters.Add(myParameter);
			try {
				connection.Open();
				int rows = cmd.ExecuteNonQuery();
				return rows;
			} catch (System.Data.SqlClient.SqlException e) {
				throw e;
			} finally {
				cmd.Dispose();
				connection.Close();
			}
		}
	}
	/// <summary>
	/// Execute a stored procedure parameters with the SQL statement.
	/// </summary>
	/// <param name="SQLString">SQL</param>
	/// <param name="content">Parameters of content, such as a complex field is the format of articles, special symbols, you can add this way</param>
	/// <returns>The number of records affected</returns>
	public static object ExecuteSqlGet(string SQLString, string content)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			SqlCommand cmd = new SqlCommand(SQLString, connection);
			System.Data.SqlClient.SqlParameter myParameter = new System.Data.SqlClient.SqlParameter("@content", SqlDbType.NText);
			myParameter.Value = content;
			cmd.Parameters.Add(myParameter);
			try {
				connection.Open();
				object obj = cmd.ExecuteScalar();
				if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
					return null;
				} else {
					return obj;
				}
			} catch (System.Data.SqlClient.SqlException e) {
				throw e;
			} finally {
				cmd.Dispose();
				connection.Close();
			}
		}
	}
	/// <summary>
	/// Image format to the database into the field
	/// </summary>
	/// <param name="strSQL">SQL</param>
	/// <param name="fs">Image bytes, the database field type for the image of the situation</param>
	/// <returns>The number of records affected</returns>
	public static int ExecuteSqlInsertImg(string strSQL, byte[] fs)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			SqlCommand cmd = new SqlCommand(strSQL, connection);
			System.Data.SqlClient.SqlParameter myParameter = new System.Data.SqlClient.SqlParameter("@fs", SqlDbType.Image);
			myParameter.Value = fs;
			cmd.Parameters.Add(myParameter);
			try {
				connection.Open();
				int rows = cmd.ExecuteNonQuery();
				return rows;
			} catch (System.Data.SqlClient.SqlException e) {
				throw e;
			} finally {
				cmd.Dispose();
				connection.Close();
			}
		}
	}

	/// <summary>
	/// Perform a calculation results statement, return query results (object).
	/// </summary>
	/// <param name="SQLString">Calculation results statement</param>
	/// <returns>Query results (object)</returns>
	public static object GetSingle(string SQLString)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand(SQLString, connection)) {
				try {
					connection.Open();
					object obj = cmd.ExecuteScalar();
					if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
						return null;
					} else {
						return obj;
					}
				} catch (System.Data.SqlClient.SqlException e) {
					connection.Close();
					throw e;
				}
			}
		}
	}
	public static object GetSingle(string SQLString, int Times)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand(SQLString, connection)) {
				try {
					connection.Open();
					cmd.CommandTimeout = Times;
					object obj = cmd.ExecuteScalar();
					if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
						return null;
					} else {
						return obj;
					}
				} catch (System.Data.SqlClient.SqlException e) {
					connection.Close();
					throw e;
				}
			}
		}
	}
	/// <summary>
	/// Execute the query and return SqlDataReader (Note: calling this method, be sure to be on the SqlDataReader Close)
	/// </summary>
	/// <param name="strSQL">Query sql</param>
	/// <returns>SqlDataReader</returns>
	public static SqlDataReader ExecuteReader(string strSQL)
	{
		SqlConnection connection = new SqlConnection(connectionString);
		SqlCommand cmd = new SqlCommand(strSQL, connection);
		try {
			connection.Open();
			SqlDataReader myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return myReader;
		} catch (System.Data.SqlClient.SqlException e) {
			throw e;
		}

	}
	/// <summary>
	/// Execute the query and return DataSet
	/// </summary>
	/// <param name="SQLString">Query sql</param>
	/// <returns>DataSet</returns>
	public static DataSet Query(string SQLString)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			DataSet ds = new DataSet();
			try {
				connection.Open();
				SqlDataAdapter command = new SqlDataAdapter(SQLString, connection);
				command.Fill(ds, "ds");
			} catch (System.Data.SqlClient.SqlException ex) {
				throw new Exception(ex.Message);
			}
			return ds;
		}
	}
	public static DataSet Query(string SQLString, int Times)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			DataSet ds = new DataSet();
			try {
				connection.Open();
				SqlDataAdapter command = new SqlDataAdapter(SQLString, connection);
				command.SelectCommand.CommandTimeout = Times;
				command.Fill(ds, "ds");
			} catch (System.Data.SqlClient.SqlException ex) {
				throw new Exception(ex.Message);
			}
			return ds;
		}
	}



	#endregion

	#region "Exec SQL by param"

	/// <summary>
	/// Execute SQL statements, the return of the number of records
	/// </summary>
	/// <param name="SQLString">SQL</param>
	/// <returns>The number of records affected</returns>
	public static int ExecuteSql(string SQLString, params SqlParameter[] cmdParms)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand()) {
				try {
					PrepareCommand(cmd, connection, null, SQLString, cmdParms);
					int rows = cmd.ExecuteNonQuery();
					cmd.Parameters.Clear();
					return rows;
				} catch (System.Data.SqlClient.SqlException e) {
					throw e;
				}
			}
		}
	}


	/// <summary>
	/// Perform multiple SQL statements, implement database transactions.
	/// </summary>
	/// <param name="SQLStringList">SQL statement of the hash table (key for the sql statement, value is the statement SqlParameter [])</param>
	public static void ExecuteSqlTran(Hashtable SQLStringList)
	{
		using (SqlConnection conn = new SqlConnection(connectionString)) {
			conn.Open();
			using (SqlTransaction trans = conn.BeginTransaction()) {
				SqlCommand cmd = new SqlCommand();
				try {
					//loop
					foreach (DictionaryEntry myDE in SQLStringList) {
						string cmdText = myDE.Key.ToString();
						SqlParameter[] cmdParms = (SqlParameter[])myDE.Value;
						PrepareCommand(cmd, conn, trans, cmdText, cmdParms);
						int val = cmd.ExecuteNonQuery();
						cmd.Parameters.Clear();
					}
					trans.Commit();
				} catch {
					trans.Rollback();
					throw;
				}
			}
		}
	}

	/// <summary>
	/// Perform multiple SQL statements, implement database transactions.
	/// </summary>
	/// <param name="SQLStringList">SQL statement of the hash table (key for the sql statement, value is the statement SqlParameter [])</param>
	public static void ExecuteSqlTranWithIndentity(Hashtable SQLStringList)
	{
		using (SqlConnection conn = new SqlConnection(connectionString)) {
			conn.Open();
			using (SqlTransaction trans = conn.BeginTransaction()) {
				SqlCommand cmd = new SqlCommand();
				try {
					int indentity = 0;
					//loop
					foreach (DictionaryEntry myDE in SQLStringList) {
						string cmdText = myDE.Key.ToString();
						SqlParameter[] cmdParms = (SqlParameter[])myDE.Value;
						foreach (SqlParameter q in cmdParms) {
							if (q.Direction == ParameterDirection.InputOutput) {
								q.Value = indentity;
							}
						}
						PrepareCommand(cmd, conn, trans, cmdText, cmdParms);
						int val = cmd.ExecuteNonQuery();
						foreach (SqlParameter q in cmdParms) {
							if (q.Direction == ParameterDirection.Output) {
								indentity = Convert.ToInt32(q.Value);
							}
						}
						cmd.Parameters.Clear();
					}
					trans.Commit();
				} catch {
					trans.Rollback();
					throw;
				}
			}
		}
	}
	/// <summary>
	/// Perform a calculation results statement, return query results (object).
	/// </summary>
	/// <param name="SQLString">Calculation results statement</param>
	/// <returns>Query results (object)</returns>
	public static object GetSingle(string SQLString, params SqlParameter[] cmdParms)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			using (SqlCommand cmd = new SqlCommand()) {
				try {
					PrepareCommand(cmd, connection, null, SQLString, cmdParms);
					object obj = cmd.ExecuteScalar();
					cmd.Parameters.Clear();
					if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value))) {
						return null;
					} else {
						return obj;
					}
				} catch (System.Data.SqlClient.SqlException e) {
					throw e;
				}
			}
		}
	}

	/// <summary>
	/// Execute the query and return SqlDataReader (Note: calling this method, be sure to be on the SqlDataReader Close)
	/// </summary>
	/// <param name="SQLString">SQL String</param>
	/// <param name="cmdParms">Sql Parameter</param>
	/// <returns>SqlDataReader</returns>
	public static SqlDataReader ExecuteReader(string SQLString, params SqlParameter[] cmdParms)
	{
		SqlConnection connection = new SqlConnection(connectionString);
		SqlCommand cmd = new SqlCommand();
		try {
			PrepareCommand(cmd, connection, null, SQLString, cmdParms);
			SqlDataReader myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			cmd.Parameters.Clear();
			return myReader;
		} catch (System.Data.SqlClient.SqlException e) {
			throw e;
		}


	}

	/// <summary>
	/// Execute the query and return DataSet
	/// </summary>
	/// <param name="SQLString">SQL String</param>
	/// <returns>DataSet</returns>
	public static DataSet Query(string SQLString, params SqlParameter[] cmdParms)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			SqlCommand cmd = new SqlCommand();
			PrepareCommand(cmd, connection, null, SQLString, cmdParms);
			using (SqlDataAdapter da = new SqlDataAdapter(cmd)) {
				DataSet ds = new DataSet();
				try {
					da.Fill(ds, "ds");
					cmd.Parameters.Clear();
				} catch (System.Data.SqlClient.SqlException ex) {
					throw new Exception(ex.Message);
				}
				return ds;
			}
		}
	}


	private static void PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, string cmdText, SqlParameter[] cmdParms)
	{
		if (conn.State != ConnectionState.Open) {
			conn.Open();
		}
		cmd.Connection = conn;
		cmd.CommandText = cmdText;
		if (trans != null) {
			cmd.Transaction = trans;
		}
		cmd.CommandType = CommandType.Text;
		//cmdType;

		if (cmdParms != null) {

			foreach (SqlParameter parameter in cmdParms) {
				if ((parameter.Direction == ParameterDirection.InputOutput || parameter.Direction == ParameterDirection.Input) && (parameter.Value == null)) {
					parameter.Value = DBNull.Value;
				}
				cmd.Parameters.Add(parameter);
			}
		}
	}

	#endregion

	#region "Exec stored procedures"

	/// <summary>
	/// Execute stored procedures, return SqlDataReader (Note: calling this method, be sure to be on the SqlDataReader Close)
	/// </summary>
	/// <param name="storedProcName">Proc Name</param>
	/// <param name="parameters">parameters</param>
	/// <returns>SqlDataReader</returns>
	public static SqlDataReader RunProcedure(string storedProcName, IDataParameter[] parameters)
	{
		SqlConnection connection = new SqlConnection(connectionString);
		SqlDataReader returnReader = default(SqlDataReader);
		try {
			connection.Open();
			SqlCommand command = BuildQueryCommand(connection, storedProcName, parameters);
			command.CommandType = CommandType.StoredProcedure;
			returnReader = command.ExecuteReader(CommandBehavior.CloseConnection);
			return returnReader;
		} catch (System.Data.SqlClient.SqlException ex) {
			throw new Exception(ex.Message);
		}
	}


	/// <summary>
	/// Execute stored procedures
	/// </summary>
	/// <param name="storedProcName">storedProc Name</param>
	/// <param name="parameters">parameters</param>
	/// <param name="tableName">DataSet Name</param>
	/// <returns>DataSet</returns>
	public static DataSet RunProcedure(string storedProcName, IDataParameter[] parameters, string tableName)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			DataSet dataSet = new DataSet();
			try {
				connection.Open();
				SqlDataAdapter sqlDA = new SqlDataAdapter();
				sqlDA.SelectCommand = BuildQueryCommand(connection, storedProcName, parameters);
				sqlDA.Fill(dataSet, tableName);
				connection.Close();
				return dataSet;
			} catch (System.Data.SqlClient.SqlException ex) {
				throw new Exception(ex.Message);
			}
		}
	}
	public static DataSet RunProcedure(string storedProcName, IDataParameter[] parameters, string tableName, int Times)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			DataSet dataSet = new DataSet();
			try {
				connection.Open();
				SqlDataAdapter sqlDA = new SqlDataAdapter();
				sqlDA.SelectCommand = BuildQueryCommand(connection, storedProcName, parameters);
				sqlDA.SelectCommand.CommandTimeout = Times;
				sqlDA.Fill(dataSet, tableName);
				connection.Close();
				return dataSet;
			} catch (System.Data.SqlClient.SqlException ex) {
				throw new Exception(ex.Message);
			}
		}
	}


	/// <summary>
	/// Construction of SqlCommand object (used to return a result set, rather than an integer value)
	/// </summary>
	/// <param name="connection">connection</param>
	/// <param name="storedProcName">storedProcName</param>
	/// <param name="parameters">parameters</param>
	/// <returns>SqlCommand</returns>
	private static SqlCommand BuildQueryCommand(SqlConnection connection, string storedProcName, IDataParameter[] parameters)
	{
		SqlCommand command = new SqlCommand(storedProcName, connection);
		command.CommandType = CommandType.StoredProcedure;
		foreach (SqlParameter parameter in parameters) {
			if (parameter != null) {
				// Check the value of the output parameters are not assigned, assign it to DBNull.Value.
				if ((parameter.Direction == ParameterDirection.InputOutput || parameter.Direction == ParameterDirection.Input) && (parameter.Value == null)) {
					parameter.Value = DBNull.Value;
				}
				command.Parameters.Add(parameter);
			}
		}

		return command;
	}

	/// <summary>
	/// Execute stored procedures, return the number of rows affected	
	/// </summary>
	/// <param name="storedProcName">storedProc Name</param>
	/// <param name="parameters">parameters</param>
	/// <param name="rowsAffected">rowsAffected</param>
	/// <returns></returns>
	public static int RunProcedure(string storedProcName, IDataParameter[] parameters, ref int rowsAffected)
	{
		using (SqlConnection connection = new SqlConnection(connectionString)) {
			try {
				int result = 0;
				connection.Open();
				SqlCommand command = BuildIntCommand(connection, storedProcName, parameters);
				rowsAffected = command.ExecuteNonQuery();
				result = Convert.ToInt32(command.Parameters("ReturnValue").Value);
				//Connection.Close();
				return result;
			} catch (System.Data.SqlClient.SqlException ex) {
				throw new Exception(ex.Message);
			}
		}
	}

	/// <summary>
	/// Create SqlCommand object instance (used to return an integer value)
	/// </summary>
	/// <param name="storedProcName">storedProc Name</param>
	/// <param name="parameters">parameters</param>
	/// <returns>SqlCommand </returns>
	private static SqlCommand BuildIntCommand(SqlConnection connection, string storedProcName, IDataParameter[] parameters)
	{
		SqlCommand command = BuildQueryCommand(connection, storedProcName, parameters);
		command.Parameters.Add(new SqlParameter("ReturnValue", SqlDbType.Int, 4, ParameterDirection.ReturnValue, false, 0, 0, string.Empty, DataRowVersion.Default, null));
		return command;
	}
	#endregion

}


