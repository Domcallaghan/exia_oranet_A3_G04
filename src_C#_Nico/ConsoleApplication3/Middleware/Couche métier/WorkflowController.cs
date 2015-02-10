using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3.Middleware.Couche_métier
{
   class WorkflowController
    {
       public WorkflowController()
       {

       }
        public object Method(object message)
        {
            Message msg = (Message)message;
            ArrayList response = Cad.ExecuteRequete("SELECT PLOP FROM TEST");
            msg.Data = response;
            return msg;
        }
    }
}
