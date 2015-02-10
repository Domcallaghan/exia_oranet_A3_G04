using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3.Middleware
{
    static class Cad
    {

       static string oradb = "Data Source=(DESCRIPTION="
             + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=192.168.1.25)(PORT=1521)))"
             + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=PHARMAWEB.dev)));"
             + "User Id=PHARMAWEB;Password=Admin1337;";
        
           static OracleConnection conn = new OracleConnection(oradb);
           static object o = new object();
        public static ArrayList ExecuteRequete(String requete)
        {
            lock (o)
            {
                conn.Open();
                string sql = requete;
                OracleCommand cmd = new OracleCommand(sql, conn);
                cmd.CommandType = CommandType.Text;
                OracleDataReader dr = cmd.ExecuteReader();
                dr.Read();
                ArrayList response = new ArrayList();
                response.Add(dr.GetString(0));
                conn.Close();
                return response;
            }
        }
    
    }
}
