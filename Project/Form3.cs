using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace Project
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Register_Click(object sender, EventArgs e)
        {
            string name = txtRegisterName.Text;
            string surname = txtRegisterSurname.Text;
            string username = txtRegisterUsername.Text;
            string password = txtRegisterPassword.Text;

            Login login = new Login (name, surname, username, password);
            FileStream fileName = new FileStream("Login.txt", FileMode.OpenOrCreate, FileAccess.Write);
            StreamWriter writer = new StreamWriter(fileName);

            writer.Write(name, ",",surname, "," , username, ",", password, ",");
            writer.Close();
            MessageBox.Show("Successful registeration","Successful", MessageBoxButtons.OK, MessageBoxIcon.Information);


        }

        private void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtRegisterPassword.Text;
            string forgot;

            StreamReader reader = new StreamReader("Login.txt");
            List<string> name = new List<string>();
            List<string> pass = new List<string>();
            string input = reader.ReadLine();
            while (input != null)
            {
                string[] word = input.Split(',');
                name.Add(word[0]);
                pass.Add(word[1]);
                input = reader.ReadLine();
            }

            reader.Close();
            bool correct = false;
            forgot = Console.ReadLine();

            if (correct)
            {
                MessageBox.Show(username + "Your password is" + forgot, "Save password", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Username not found", "Incorrect", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
            }
        }

        private void btnLogIn_Click(object sender, EventArgs e)
        {
            FileHandler fh = new FileHandler();
            string name = fh.checkUser().GetValue(0).ToString();
            string password = fh.checkUser().GetValue(0).ToString();

            string username = txtUsername.Text;
            string pass = txtRegisterPassword.Text;
            if (name == username && pass == password)
            {
                Form1 studentInfo = new Form1();
                this.Close();
                studentInfo.Show();

            }

           
        }
    }
}
