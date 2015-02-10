using ConsoleApplication3.Middleware.Couche_métier;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using ConsoleApplication3;
using System.Runtime.Remoting.Messaging;

namespace ConsoleApplication3.Middleware
{
    delegate void DELG(object message);
    class GroupOfProcesses
    {
        public async Task<object> LaunchProcess(object msn)
        {
            Message message = (Message)msn;
            String service = message.Service;
            WorkflowController controller = new WorkflowController();
            object msg = null;

            switch (service)
            {
                case "1":
                    msg = controller.Method(message);
                    break;
                case "2":

                    break;
            }
            return msg;
            

           
        }
    }
}
