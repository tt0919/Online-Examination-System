using System;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace Web2ASPNET2.OperateSqlServer
{
	public class OperateDatabase
	{
		#region  ��������

		/// <summary>
		/// ������web.config�б�ʶ�����ַ�����Name���Ե�ֵ
		/// </summary>
		private static string connectionStringNameInWebConfig = "SQLSERVERCONNECTIONSTRING";
		public static string ConnectionStringNameInWebConfig
		{
			get
			{
				return connectionStringNameInWebConfig;
			}
			set
			{   ///�ַ�������Ϊ�ջ������
				if(!string.IsNullOrEmpty(value))
				{
					connectionStringNameInWebConfig = value;
				}
			}
		}

		/// <summary>
		/// ����ִ�����ݿ��������ֵ�Ĳ�����ʶ
		/// </summary>
		private static string returnValueString = "RETURNVALUESTRING";
		public static string ReturnValueString
		{
			get
			{
				return returnValueString;
			}			
		}

		#endregion

		#region ��������

		/// <summary>
		/// ��������
		/// </summary>
		/// <param name="ParamName">�洢��������</param>
		/// <param name="DbType">��������</param>
		/// <param name="Size">������С</param>
		/// <param name="Direction">��������</param>
		/// <param name="Value">����ֵ</param>
		/// <returns>�µ� parameter ����</returns>
		private static SqlParameter CreateParam(string ParamName,SqlDbType DbType,
			Int32 Size,ParameterDirection Direction,object Value)
		{
			SqlParameter param;			
			if(Size > 0)
			{   ///ʹ��size������С��Ϊ0�Ĳ���
				param = new SqlParameter(ParamName,DbType,Size);
			}
			else
			{
				param = new SqlParameter(ParamName,DbType);
			}
			///����������Ͳ���
			param.Direction = Direction;
			if(!(Direction == ParameterDirection.Output && Value == null))
			{
				param.Value = Value;
			}
			///���ز���
			return param;
		}

		/// <summary>
		/// �����������Ͳ���
		/// </summary>
		/// <param name="ParamName">�洢��������</param>
		/// <param name="DbType">��������</param></param>
		/// <param name="Size">������С</param>
		/// <param name="Value">����ֵ</param>
		/// <returns>�µ�parameter ����</returns>
		public static SqlParameter CreateInParam(string ParamName,
			SqlDbType DbType,int Size,object Value)
		{
			return CreateParam(ParamName,DbType,Size,ParameterDirection.Input,Value);
		}

		/// <summary>
		/// ����������Ͳ���
		/// </summary>
		/// <param name="ParamName">�洢��������</param>
		/// <param name="DbType">��������</param>
		/// <param name="Size">������С</param>
		/// <returns>�µ� parameter ����</returns>
		public static SqlParameter CreateOutParam(string ParamName,
			SqlDbType DbType,int Size)
		{
			return CreateParam(ParamName,DbType,Size,ParameterDirection.Output,null);
		}

		/// <summary>
		/// �����������Ͳ���
		/// </summary>
		/// <param name="ParamName">�洢��������</param>
		/// <param name="DbType">��������</param>
		/// <param name="Size">������С</param>
		/// <returns>�µ� parameter ����</returns>
		public static SqlParameter CreateReturnParam(string ParamName,
			SqlDbType DbType,int Size)
		{
			return CreateParam(ParamName,DbType,Size,ParameterDirection.ReturnValue,null);
		}

		#endregion

		#region ����SqlCommand��SqlDataAdapter

		/// <summary>
		/// ����SqlCommand����
		/// </summary>
		/// <param name="procName">�洢���̵�����</param>
		/// <param name="prams">�洢�����������</param>
		/// <returns>����SqlCommand����</returns>
		private static SqlCommand CreateSqlCommand(string procName,
			params SqlParameter[] prams)
		{   ///�������ݿ�����
			SqlConnection sqlCon = CreateSqlConnection();
			///�����ݿ�����
			if(sqlCon == null) return null;
			if(sqlCon.State == ConnectionState.Closed)
			{
				sqlCon.Open();
			}
			///����SqlCommand������
			SqlCommand cmd = new SqlCommand(procName,sqlCon);
			cmd.CommandType = CommandType.StoredProcedure;

			///��Ӵ洢���̲���
			if(prams != null)
			{
				foreach(SqlParameter parameter in prams)
				{
					cmd.Parameters.Add(parameter);
				}
			}

			///��ӷ��ز���
			cmd.Parameters.Add(new SqlParameter(returnValueString,
				SqlDbType.Int,4,ParameterDirection.ReturnValue,
				false,0,0,string.Empty,DataRowVersion.Default,null));

			///����SqlCommand����
			return cmd;
		}

		/// <summary>
		/// ����SqlDataAdapter����
		/// </summary>
		/// <param name="procName">�洢���̵�����</param>
		/// <param name="prams">�洢�����������</param>
		/// <returns>����SqlDataAdapter����</returns>
		private static SqlDataAdapter CreateSqlDataAdapter(string procName,
			params SqlParameter[] prams)
		{   ///�������ݿ�����
			SqlConnection sqlCon = CreateSqlConnection();
			///�����ݿ�����
			if(sqlCon == null) return null;
			if(sqlCon.State == ConnectionState.Closed)
			{
				sqlCon.Open();
			}
			///����SqlDataAdapter������
			SqlDataAdapter da = new SqlDataAdapter(procName,sqlCon);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;

			///��Ӵ洢���̲���
			if(prams != null)
			{
				foreach(SqlParameter parameter in prams)
				{
					da.SelectCommand.Parameters.Add(parameter);
				}
			}

			///��ӷ��ز���
			da.SelectCommand.Parameters.Add(new SqlParameter(returnValueString,
				SqlDbType.Int,4,ParameterDirection.ReturnValue,
				false,0,0,string.Empty,DataRowVersion.Default,null));

			///����SqlDataAdapter����
			return da;
		}

		#endregion

		#region ��������

		/// <summary>
		/// ��������.
		/// </summary>
		private static SqlConnection CreateSqlConnection()
		{   ///��ȡ�����ַ���
			string conStr = (string)Cache.GetData(connectionStringNameInWebConfig);

			if(string.IsNullOrEmpty(conStr))
			{   
				try
				{   ///��������ַ���Ϊ�գ���������ļ��л�ȡ�����ַ���
					conStr = ConfigurationManager.ConnectionStrings[connectionStringNameInWebConfig].ConnectionString;
				}
				catch(Exception ex)
				{
					throw new Exception(ex.Message,ex);
				}
				///���ַ�����ӵ�������
				Cache.CachingData(connectionStringNameInWebConfig,conStr);				
			}
			if(!string.IsNullOrEmpty(conStr))
			{	/// �������ݿ�����
				return(new SqlConnection(conStr));
			}
			return null;
		}

		#endregion

		#region ִ�д洢����

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢���̵�����</param>
		/// <returns></returns>
		public static int RunProc(string procName)
		{   ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,null);
			if(cmd == null) return -1;
			try
			{   ///ִ�д洢����
				cmd.ExecuteNonQuery();
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(cmd.Connection.State == ConnectionState.Open)
				{
					cmd.Connection.Close();
				}
			}

			///����ִ�н��
			return (int)cmd.Parameters[returnValueString].Value;
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="prams">�洢���̲���</param>
		/// <returns></returns>
		public static int RunProc(string procName,params SqlParameter[] prams)
		{   ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,prams);
			if(cmd == null) return -1;
			try
			{   ///ִ�д洢����
				cmd.ExecuteNonQuery();
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(cmd.Connection.State == ConnectionState.Open)
				{
					cmd.Connection.Close();
				}
			}

			///����ִ�н��
			return (int)cmd.Parameters[returnValueString].Value;		
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="dr">����SqlDataReader����</param>
		public static void RunProc(string procName,out SqlDataReader dr)
		{   ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,null);
			if(cmd == null)
			{
				dr = null;
				return;
			}
			try
			{   ///��ȡ����
				dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			}		
			catch(Exception ex)
			{
				dr = null;
				throw new Exception(ex.Message,ex);
			}
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="dr">����SqlDataReader����</param>
		/// <param name="prams">�洢���̲���</param>		
		public static void RunProc(string procName,out SqlDataReader dr,params SqlParameter[] prams)
		{   ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,prams);
			if(cmd == null)
			{
				dr = null;
				return;
			}
			try
			{   ///��ȡ����
				dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			}		
			catch(Exception ex)
			{
				dr = null;
				throw new Exception(ex.Message,ex);
			}
		}	

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="ds">����DataSet����</param>
		public static void RunProc(string procName,ref DataSet ds)
		{   ///��ʼ��ds
			if(null == ds) ds = new DataSet();
			///����SqlDataAdapter
			SqlDataAdapter da = CreateSqlDataAdapter(procName,null);
			if(da == null) return;
			try
			{   ///�������
				da.Fill(ds);
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(da.SelectCommand.Connection.State == ConnectionState.Open)
				{
					da.SelectCommand.Connection.Close();
				}
			}
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="ds">����DataSet����</param>
		/// <param name="prams">�洢���̲���</param>		
		public static void RunProc(string procName,ref DataSet ds,params SqlParameter[] prams)
		{   ///��ʼ��ds
			if(null == ds) ds = new DataSet();
			///����SqlDataAdapter
			SqlDataAdapter da = CreateSqlDataAdapter(procName,prams);
			if(da == null) return;
			try
			{   ///�������
				da.Fill(ds);
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(da.SelectCommand.Connection.State == ConnectionState.Open)
				{
					da.SelectCommand.Connection.Close();
				}
			}
		}
		
		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="ds">����DataSet����</param>
		/// <param name="start">��ʼ�ļ�¼</param>
		/// <param name="max">����¼����</param>
		public static void RunProc(string procName,ref DataSet ds,
			int start,int max)
		{   ///��ʼ��ds
			if(null == ds) ds = new DataSet();
			///����SqlDataAdapter
			SqlDataAdapter da = CreateSqlDataAdapter(procName,null);
			if(da == null) return;
			try
			{   ///�������
				da.Fill(ds,start,max,"TableName");
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(da.SelectCommand.Connection.State == ConnectionState.Open)
				{
					da.SelectCommand.Connection.Close();
				}
			}
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="ds">����DataSet����</param>
		/// <param name="start">��ʼ�ļ�¼</param>
		/// <param name="max">����¼����</param>
		/// <param name="prams">�洢���̲���</param>
		public static void RunProc(string procName,ref DataSet ds,
			int start,int max,params SqlParameter[] prams)
		{   ///��ʼ��ds
			if(null == ds) ds = new DataSet();
			///����SqlDataAdapter
			SqlDataAdapter da = CreateSqlDataAdapter(procName,prams);
			if(da == null) return;
			try
			{   ///�������
				da.Fill(ds,start,max,"TableName");
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(da.SelectCommand.Connection.State == ConnectionState.Open)
				{
					da.SelectCommand.Connection.Close();
				}
			}
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <returns>���ش洢���̷���ֵ</returns>
		public static int RunProcScalar(string procName)
		{   ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,null);
			if(cmd == null) return -1;
			int result;
			try
			{
				///ִ�д洢����
				result = (int)cmd.ExecuteScalar();
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(cmd.Connection.State == ConnectionState.Open)
				{
					cmd.Connection.Close();
				}
			}
			///���ز�ѯ���
			return result;
		}

		/// <summary>
		/// ִ�д洢����
		/// </summary>
		/// <param name="procName">�洢��������</param>
		/// <param name="prams">�洢�����������</param>
		/// <returns>���ش洢���̷���ֵ</returns>
		public static int RunProcScalar(string procName,params SqlParameter[] prams)
		{    ///����SqlCommand����
			SqlCommand cmd = CreateSqlCommand(procName,prams);
			if(cmd == null) return -1;
			int result;
			try
			{
				///ִ�д洢����
				result = (int)cmd.ExecuteScalar();
			}
			catch(Exception ex)
			{
				throw new Exception(ex.Message,ex);
			}
			finally
			{   ///�ر�����
				if(cmd.Connection.State == ConnectionState.Open)
				{
					cmd.Connection.Close();
				}
			}
			///���ز�ѯ���
			return result;
		}

		#endregion	
	}

	internal class Cache
	{
		#region ��������

		/// <summary>
		/// ���建����
		/// </summary>
		private static Hashtable cache = Hashtable.Synchronized(new Hashtable());

		/// <summary>
		/// �������ݵ�Cache�У�����Ѿ����ڻ��������д��������ݡ�
		/// </summary>
		/// <param name="key"></param>
		/// <param name="value"></param>
		public static void CachingData(string key,object value)
		{
			cache[key] = value;			
		}

		/// <summary>
		/// ��ȡ���������
		/// </summary>
		/// <param name="key"></param>
		/// <returns></returns>
		public static object GetData(string key)
		{
			return (object)cache[key];
		}

		#endregion
	}
}
