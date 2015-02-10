using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DbLinq;
using DbLinq.Oracle;
using System.Data;
using System.Data.OracleClient;
using Oracle.DataAccess;
using ConsoleApplication3.Middleware;
using System.Runtime.Remoting.Messaging;

namespace ConsoleApplication3
{
    class Program
    {
        static void Main(string[] args)
        {
            Message message = new Message("transmitter", "1", "security", true, "error");
            GroupOfProcesses gps1 = new GroupOfProcesses();
            GroupOfProcesses gps2 = new GroupOfProcesses();
            GroupOfProcesses gps3 = new GroupOfProcesses();
            Message newMessage1 = null;
            Message newMessage2 = null;
            Message newMessage3 = null;
            
            DELG dlg1 = (x) =>
            {
                newMessage1 =(Message)  gps1.LaunchProcess(x).Result; 
           };

            DELG dlg2 = (x) =>
            {
                newMessage2 = (Message)gps2.LaunchProcess(x).Result;
            };
              
            DELG dlg3 = (x) =>
            {
                newMessage3 = (Message)gps3.LaunchProcess(x).Result;
            };

            IAsyncResult asyncR1 = dlg1.BeginInvoke((object)message, (asr) =>
            {
                AsyncResult result = (AsyncResult)asr;
                DELG d = (DELG)result.AsyncDelegate;
                d.EndInvoke(asr);
                Console.WriteLine(newMessage1.Data[0]);
            }, dlg1);
           IAsyncResult asyncR2 = dlg2.BeginInvoke((object)message, (asr) =>
            {
                AsyncResult result = (AsyncResult)asr;
                DELG d = (DELG)result.AsyncDelegate;
                d.EndInvoke(asr);
                Console.WriteLine(newMessage2.Data[0]);

            }, dlg2);
            IAsyncResult asyncR3 = dlg3.BeginInvoke((object)message, (asr) =>
            {
                AsyncResult result = (AsyncResult)asr;
                DELG d = (DELG)result.AsyncDelegate;
                d.EndInvoke(asr);
                Console.WriteLine(newMessage3.Data[0]);

            }, dlg3);
            
            Console.Read();
        }
    }
}
