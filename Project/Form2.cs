using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Project
{
    public partial class Form2 : Form
    {
        
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new DataHandler().InsertCourse(txtCode.Text, txtName.Text, txtDescription.Text);
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            Form4 form4 = new Form4(new DataHandler().SearchCourse(txtCode.Text));

            this.Hide();
            form4.Show();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            new DataHandler().UpdateCourse(txtCode.Text, txtName.Text, txtDescription.Text);
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            new DataHandler().DeleteCourse(txtCode.Text);
        }
    }
}
