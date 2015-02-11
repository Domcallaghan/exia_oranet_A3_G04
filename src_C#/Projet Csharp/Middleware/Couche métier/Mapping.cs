using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3.Middleware.Couche_métier
{
    static class Mapping
    {
        public static string ListePharmacie()
        {
            return "select * from table(Liste_des_medoc(1,1));";
        }
        public static string ListeParapharmacie()
        {
            return "select * from table(Liste_des_medoc(1,0));";
        }
        public static string Connection()
        {
            return "// EXECUTE PROCEDURE Connection \\";
        }
        public static string SendOrder()
        {
            return "// EXECUTE PROCEDURE SendOrder \\";
        }
        public static string CustomerOrder()
        { 
            return "// EXECUTE PROCEDURE CustomerOrder \\"; 
        }

        public static string DeleteOrder()
        {
            return "// EXECUTE PROCEDURE DeleteOrder \\";
        }

        public static string AllOrders()
        {
            return "// EXECUTE PROCEDURE AllOrders \\";
        }
    }
}
