using ConsoleApplication3.Middleware;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Projet_Csharp
{
    public partial class Window_customer : Form
    {
        public Window_customer()
        {
            InitializeComponent();
        }
        /*
         * Evenement clic bouton Ajouter 
         */
        private void Btn_add_Click(object sender, EventArgs e)
        {

        }
        /*
         * Evenement clic bouton Retirer 
         */
        private void Btn_remove_Click(object sender, EventArgs e)
        {

        }
        /*
         * Evenement clic bouton Commander
         */
        private void Btn_order_Click(object sender, EventArgs e)
        {

        }
        /*
         * Evenement clic label Notice
         */
        private void Lb_show_notice_Click(object sender, EventArgs e)
        {

        }
        /*
         * Evenement clic bouton Config
         */
        private void Btn_config_Click(object sender, EventArgs e)
        {

        }
        /*
         * Evenement clic bouton Déconnexion
         */
        private void Btn_logout_Click(object sender, EventArgs e)
        {
            ConsoleApplication3.Messenger message = new ConsoleApplication3.Messenger("transmitter", "ListePharmacie", "security", true, "error");
            GroupOfProcesses gps1 = new GroupOfProcesses();
            ConsoleApplication3.Messenger newMessage1 = null;
            newMessage1 = (ConsoleApplication3.Messenger)gps1.LaunchProcess(message).Result;
            Lb_customer_name.Text = "";
            for (int i = 0; i < newMessage1.Data.Count; i++)
            {
                Lb_customer_name.Text += (newMessage1.Data[i])[0].ToString();
                Console.WriteLine(((newMessage1.Data[i])[0].ToString()));
            }
            
        }

        private void Dgv_medicine_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Lb_customer_name_Click(object sender, EventArgs e)
        {

        }
    }
}
