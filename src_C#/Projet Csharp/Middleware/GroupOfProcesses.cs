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
            Messenger message = (Messenger)msn;
            String service = message.Service;
            WorkflowController controller = new WorkflowController();
            object msg = null;

            switch (service)
            {
                case "ListePharmacie":
                    msg = controller.ListePharmacie(message);
                    break;
                case "ListeParapharmacie":
                    msg = controller.ListeParapharmacie(message);
                    break;
                case "Connection":
                    msg = controller.Connection(message);
                    break;
                case "SendOrder":
                    msg = controller.SendOrder(message);
                    break;
                case "CustomerOrder" :
                    msg = controller.CustomerOrder(message);
                    break;
                case "DeleteOrder":
                    msg = controller.DeleteOrder(message);
                    break;
                case "AllOrders":
                    msg = controller.AllOrders(message);
                    break;

            }
            return msg;
        }
    }
}
