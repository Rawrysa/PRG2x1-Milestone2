using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Project
{
    class FileHandler
    {
        private FileStream stream;
        private StreamReader read;
        private StreamWriter write;

        public List<string> ReadLogin(string filepath)
        {
            List<string> info = new List<string>();
            try
            {
                Stream readfile = new FileStream("Login.txt", FileMode.Open, FileAccess.Read);
                read = new StreamReader(stream);


                while (!read.EndOfStream)
                {
                    info.Add(read.ReadLine());
                }
            }
            finally
            {
                read.Close();
                stream.Close();
            }
            return info;
        }

           public List<string> Logindetails = new List<string>();

            //  FileStream file = new FileStream("login.txt", FileMode.Open, FileAccess.Read);
            bool isTrue;

            public bool Login(string userName, string password)
            {
                Logindetails = ReadLogin("Login.txt");

                foreach (string item in Logindetails)
                {
                    string[] fields = item.Split(',');
                    if (userName == fields[0] && password == fields[1])
                    {
                        isTrue = true;
                    }
                }
                return isTrue;



            }

        public string[] checkUser()
        {
            FileStream file = new FileStream("Login.txt", FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(stream);
            string username = reader.ReadLine();
            string password = reader.ReadLine();
            reader.Close();
            string[] stored = { username, password };
            return stored;

        } 
        }
}

