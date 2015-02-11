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
      
        public object ListePharmacie(object message)
        {
            Messenger msg = (Messenger)message;
            List<ArrayList> response = Cad.ExecuteQuery(Mapping.ListePharmacie());
            msg.Data = response;
            return msg;
        }
        public object ListeParapharmacie(object message)
        {
            Messenger msg = (Messenger)message;
            List<ArrayList> response = Cad.ExecuteQuery(Mapping.ListeParapharmacie());
            msg.Data = response;
            return msg;
        }
        public object Connection(object message)
        {
            Messenger msg = (Messenger)message;

            if ((msg.Data[0])[0] != null && (msg.Data[0])[1] != null && (msg.Data[0])[2] != null)
            {
                List<ArrayList> response = Cad.ExecuteQuery(Mapping.Connection());
                msg.Data = response;
            }
            else
            {
                msg.Error = "Veuillez renseigner toutes les valeurs dans la variable Data du message";
            }

            return msg;
        }

        public object SendOrder(object message)
        {
            Messenger msg = (Messenger)message;
            if ((msg.Data[0])[0] != null && (msg.Data[0])[1] != null && (msg.Data[0])[2] != null)
            {//Vérifier la liste des données pour une commande
                Cad.ExecuteNonQuery(Mapping.SendOrder());
                ArrayList list = new ArrayList();
                list.Add(true);
                msg.Data = new List<ArrayList>();
                msg.Data.Add(list) ;
            }
            else
            {
                msg.Error = "Veuillez renseigner toutes les valeurs dans la variable Data du message";
            }
            return msg;
        }

        public object CustomerOrder(object message)
        {
            Messenger msg = (Messenger)message;
            if ((msg.Data[0])[0] != null)
            {
                List<ArrayList> response = Cad.ExecuteQuery(Mapping.CustomerOrder());
                msg.Data = response;
            }
            else
            {
                msg.Error = "Veuillez renseigner toutes les valeurs dans la variable Data du message";
            }
            return msg;
        }


        public object DeleteOrder(object message)
        {
            Messenger msg = (Messenger)message;
            if ((msg.Data[0])[0] != null)
            {//Vérifier la liste des données pour une commande
                
                Cad.ExecuteNonQuery(Mapping.DeleteOrder());
                ArrayList list = new ArrayList();

                list.Add(true);

                msg.Data = new List<ArrayList>();
                msg.Data.Add(list);
            }
            else
            {
                msg.Error = "Veuillez renseigner toutes les valeurs dans la variable Data du message";
            }
            return msg;
        }
        public object AllOrders(object message)
        {
            Messenger msg = (Messenger)message;
            List<ArrayList> response = Cad.ExecuteQuery(Mapping.AllOrders());
            msg.Data = response;
            return msg;
        }


    }
}
