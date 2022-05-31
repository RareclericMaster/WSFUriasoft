using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WSFUriasoft
{
    class CXBDSQL : IDisposable
    {
        private SqlConnection sql_Connection;
        private SqlTransaction sql_trasaction;
        public SqlDataReader sql_datareader;

        private struct stConnDB
        {
            public string CadenaConexion;
            public string ErrorDesc;
            public int ErrorNum;
        }

        private stConnDB info;

        public byte sql_intentos = 0;

        public string ErrDesc
        {
            get { return this.info.ErrorDesc; }
        }


        public string ErrNum
        {
            get { return info.ErrorNum.ToString(); }
        }

        public CXBDSQL(string Servidor, string catalogo, string Usuario, string contraseña)
        {

            info.CadenaConexion = string.Format("Data Source = {0};Initial Catalog = {1};User ID = {2}; Password = {3}", Servidor, catalogo, Usuario, contraseña);


            sql_Connection = new SqlConnection();

        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {

            }

            try
            {

                if (sql_datareader != null)
                {
                    sql_datareader.Close();
                    sql_datareader.Dispose();
                }


                if (!Desconectar())
                {

                }

            }
            catch (Exception ex)
            {

                AsignarError(ref ex);
            }


        }
        CXBDSQL()
        {
            Dispose(false);
        }

        private bool Conectar()
        {

            bool ok = false;

            try
            {
                if (sql_Connection != null)
                {

                    sql_Connection.ConnectionString = info.CadenaConexion;
                    sql_Connection.Open();
                    ok = true;
                }
            }
            catch (Exception ex)
            {
                Desconectar();
                AsignarError(ref ex);
                ok = false;
            }

            return ok;

        }

        public bool Desconectar()
        {
            try
            {
                if (sql_Connection != null)
                {
                    if (sql_Connection.State != ConnectionState.Closed)
                    {
                        sql_Connection.Close();
                    }
                }
                sql_Connection.Dispose();
                return true;
            }
            catch (Exception ex)
            {
                AsignarError(ref ex);
                return false;
            }
        }

        /// <summary>
        /// Ejecuta un procedimiento almacenado de Oracle.
        /// </summary>
        /// <param name="oraCommand">Objeto Command con los datos del procedimiento.</param>
        /// <param name="SpName">Nombre del procedimiento almacenado.</param>
        /// <returns>True si el procedimiento se ejecuto bien.</returns>

        public bool EjecutaSP(ref SqlCommand SqlCommand, string SpName)
        {

            bool ok = true;

            try
            {
                if (!IsConected())
                {
                    ok = Conectar();
                }

                if (ok)
                {
                    SqlCommand.Connection = sql_Connection;
                    SqlCommand.CommandText = SpName;
                    SqlCommand.CommandType = CommandType.StoredProcedure;
                    SqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                AsignarError(ref ex);
                ok = false;
            }

            return ok;

        }

        /// <summary>
        /// Ejecuta una sql que rellenar un DataReader (sentencia select).
        /// </summary>
        /// <param name="SqlQuery">sentencia sql a ejecutar</param>
        /// <returns></returns> 
        public bool EjecutaSQL(string SqlQuery)
        {

            bool ok = true;

            SqlCommand sql_Command = new SqlCommand();

            try
            {

                if (!IsConected())
                {
                    ok = Conectar();
                }

                if (ok)
                {
                    if ((sql_datareader != null))
                    {
                        sql_datareader.Close();
                        sql_datareader.Dispose();
                    }

                    sql_Command.Connection = sql_Connection;
                    sql_Command.CommandType = CommandType.Text;
                    sql_Command.CommandText = SqlQuery;


                    sql_datareader = sql_Command.ExecuteReader();
                }

            }
            catch (Exception ex)
            {
                AsignarError(ref ex);
                ok = false;
            }
            finally
            {
                if (sql_Command != null)
                {
                    sql_Command.Dispose();
                }
            }

            return ok;

        }

        /// <summary>
        /// Ejecuta una sql que no devuelve datos (update, delete, insert).
        /// </summary>
        /// <param name="SqlQuery">sentencia sql a ejecutar</param>
        /// <param name="FilasAfectadas">Fila afectadas por la sentencia SQL</param>
        /// <returns></returns>
        public bool EjecutaSQL(string SqlQuery, ref int FilasAfectadas)
        {

            bool ok = true;
            SqlCommand sql_Command = new SqlCommand();

            try
            {


                if (!IsConected())
                {
                    ok = Conectar();
                }

                if (ok)
                {
                    sql_trasaction = sql_Connection.BeginTransaction();
                    sql_Command = sql_Connection.CreateCommand();
                    sql_Command.CommandType = CommandType.Text;
                    sql_Command.CommandText = SqlQuery;
                    FilasAfectadas = sql_Command.ExecuteNonQuery();
                    sql_trasaction.Commit();
                }

            }
            catch (Exception ex)
            {

                sql_trasaction.Rollback();
                AsignarError(ref ex);
                ok = false;
            }
            finally
            {

                if (sql_Command != null)
                {
                    sql_Command.Dispose();
                }
            }

            return ok;

        }

        /// <summary>
        /// Captura Excepciones
        /// </summary>
        /// <param name="ex">Excepcion producida.</param>
        private void AsignarError(ref Exception ex)
        {

            if (ex is SqlException)
            {
                info.ErrorNum = ((SqlException)ex).Number;
                info.ErrorDesc = ex.Message;
            }
            else
            {
                info.ErrorNum = 0;
                info.ErrorDesc = ex.Message;
            }

        }

        public bool IsConected()
        {

            bool ok = false;

            try
            {

                if (sql_Connection != null)
                {

                    switch (sql_Connection.State)
                    {
                        case ConnectionState.Closed:
                        case ConnectionState.Broken:
                        case ConnectionState.Connecting:
                            ok = false;
                            break;
                        case ConnectionState.Open:
                        case ConnectionState.Fetching:
                        case ConnectionState.Executing:
                            ok = true;
                            break;
                    }
                }
                else
                {
                    ok = false;
                }

            }
            catch (Exception ex)
            {
                AsignarError(ref ex);
                ok = false;
            }

            return ok;

        }
        public string identificarol(string nombre,string contrasena)
        {
            CXBDSQL BD = new CXBDSQL($@"LAPTOP-DTE53JR1\SERVERJOHAN", "uria", "sa", "qwerty");
            string rol="";
            try
            {
                string sql = $"SELECT * FROM Usuario WHERE Usuario='{nombre}' and Contrasena='{contrasena}'";
                BD.EjecutaSQL(sql);
                while (BD.sql_datareader.Read())
                {
                    rol= BD.sql_datareader["Rol"].ToString();
                }
            }
            catch
            {
            }
            finally
            {
                BD.Dispose();   
            }
            return rol;
        }

    }

}