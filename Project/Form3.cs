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

            Text = "Login/Register Form";
        }

        private void Register_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtRegisterName.Text;
                string surname = txtRegisterSurname.Text;
                string username = txtRegisterUsername.Text;
                string password = txtRegisterPassword.Text;

                new FileHandler().Register(name, surname, username, password);

                MessageBox.Show("Successful registeration", "Successful", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch
            {
                MessageBox.Show("Registeration was unsuccessful");

            }

            txtRegisterName.Clear();
            txtRegisterSurname.Clear();
            txtRegisterUsername.Clear();
            txtRegisterPassword.Clear();
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
            if (new FileHandler().checkUser(txtUsername.Text,txtPassword.Text))
            {
                Form1 studentInfo = new Form1();
                this.Hide();
                studentInfo.Show();
            }

            else
            {
                MessageBox.Show("Incorrect Login Details!", "Incorrect Login", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                txtPassword.PasswordChar = '\0';
            }
            else
            {
                txtPassword.PasswordChar = '*';
            }
        }
    }
}
