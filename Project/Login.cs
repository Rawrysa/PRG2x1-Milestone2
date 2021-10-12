using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project
{
    class Login
    {
        private string name;
        private string surname;
        private string username;
        private string password;

        public string Name { get => name; set => name = value; }
        public string Surname { get => surname; set => surname = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }

        public Login(string name, string surname, string username, string password)
        {
            this.Name = name;
            this.Surname = surname;
            this.Username = username;
            this.Password = password;
        }

        public override string ToString()
        {
            return base.ToString();
        }
    }
}
