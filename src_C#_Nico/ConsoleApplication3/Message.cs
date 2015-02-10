using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3
{
    
    class Message
    {
        private string transmitter;
        private string service;
        private string security;
        private bool status;
        private string error;
        private ArrayList data;

        public Message(string transmitter, string service, string security, bool status, string error)
        {
            this.transmitter = transmitter;
            this.service = service;
            this.security = security;
            this.status = status;
            this.error = error;
        }

        public ArrayList Data
        {
            get
            {
                return this.data;
            }
            set
            {
                this.data = value;
            }
        }
        public String Service
        {
            get
            {
                return this.service;
            }
            set
            {
                this.service = value;
            }
        }

        public String Transmitter { get; set; }
        public String Security { get; set; }
        public bool Status { get; set; }
        public String Error { get; set; }



        
    }
}
