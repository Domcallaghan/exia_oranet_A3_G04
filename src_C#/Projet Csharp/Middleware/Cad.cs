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
             + "User Id=CLIENTA;Password=Admin1337;";
        
           static OracleConnection conn = new OracleConnection(oradb);
           static object o = new object();

        public static List<ArrayList> ExecuteQuery(String requete)
        {
            lock (o)
            {
                conn.Open();
                string sql = requete;
                OracleCommand cmd = new OracleCommand(requete, conn);

                OracleDataReader v = cmd.ExecuteReader(); 
               List<ArrayList> response = new List<ArrayList>();
                
                while (v.Read())
                {
                    ArrayList row = new ArrayList();
                    for(int i=0;i<v.FieldCount;i++)
                    {
                        row.Add(v[i]);
                    }
                    response.Add(row);
                }
                conn.Close();
                return response;
            }
        }
        public static void ExecuteNonQuery(String requete)
        {
            lock (o)
            {
                conn.Open();
                string sql = requete;
                OracleCommand cmd = new OracleCommand(requete, conn);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            
        }

    
    }
}
