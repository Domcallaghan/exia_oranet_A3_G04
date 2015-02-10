using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exia_oranet_A3_G04
{
    class CL_Login
    {
        private string login;
        private string password;
        private string rank;

        public string Login
        {
            get { return login; }
            set { login = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
   
        public string Rank
        {
            get { return rank; }
            set { rank = value; }
        }

        /**
         * Méthode de connexion des utilisateurs
         */
        void LogIn(string login, string password)
        { 
            
        
        
        }

        /**
         * Méthode de déconnextion des utilisateurs
         */
        void LogOut()
        { 
        
        
        }

        /**
         * Verifie les paramètres d'identification
         */
        bool CheckLog()
        { 
        
            return true;
        }

    }
}
