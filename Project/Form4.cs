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
    public partial class Form4 : Form
    {
        public Form4(DataTable tb)
        {
            InitializeComponent();

            dataGridView1.DataSource = tb;

        }

        private void button3_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = new DataHandler().GetStudents();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = new DataHandler().GetCourses();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 form1 = new Form1();

            this.Hide();
            form1.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();

            this.Hide();
            form2.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.CurrentRow.Index < dataGridView1.RowCount)
                {
                    dataGridView1.CurrentCell = dataGridView1.Rows[dataGridView1.CurrentRow.Index + 1].Cells[0];
                }
            }
            catch
            {
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.CurrentRow.Index > 0)
                {
                    dataGridView1.CurrentCell = dataGridView1.Rows[dataGridView1.CurrentRow.Index - 1].Cells[0];
                }
            }
            catch
            {
            }
        }
    }
}
