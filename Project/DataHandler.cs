using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Project
{
    class DataHandler
    {
        private SqlConnection connection = new SqlConnection(@"Server= LAPTOP-MSQIEH6G\SQLEXPRESS; Initial Catalog= Project; Integrated Security= SSPI");

        public DataTable GetStudents()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("spDisplayStudents", connection);
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable tb = new DataTable();
            adapter.Fill(tb);

            return tb;
        }

        public DataTable GetCourses()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("spDisplayCourse", connection);
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable tb = new DataTable();
            adapter.Fill(tb);

            return tb;

        }

        public void DeleteCourse(string cid)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spDeleteCourse", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@courseid", cid);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"Course ID: {cid} is deleted");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }

        }

        public void DeleteStudent(int sid)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spDeleteStudents", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", sid);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"Student ID: {sid} is deleted");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }

        }

        public void InsertCourse(string cid, string cname, string cdescription)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spInsertCourse", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@courseid", cid);
                cmd.Parameters.AddWithValue("@coursename", cname);
                cmd.Parameters.AddWithValue("@courseDescrption", cdescription);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"{cname} course is added");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }
        }

        public void InsertStudent(int sid, string sname, string surname, string dob, string gender, string phone, string street, string city, string postalcode, string cid)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spInsertStudents", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", sid);
                cmd.Parameters.AddWithValue("@Name", sname);
                cmd.Parameters.AddWithValue("@Surname", surname);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@street", street);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@postalcode", postalcode);
                cmd.Parameters.AddWithValue("@courseid", cid);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"{sname} {surname} is added");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }
        }

        public DataTable SearchCourse(string cid)
        {
            DataTable bt = null;

            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spSearchCourse", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@courseid", cid);
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable tb = new DataTable();
                tb.Load(reader);
                bt = tb;

                if (tb.Rows.Count == 0)
                {
                    MessageBox.Show($"Course ID: {cid} was not found");
                }
            }
            catch
            {
                MessageBox.Show($"Search was unsuccessful");
            }

            return bt;
        }

        public DataTable SearchStudent( int sid)
        {
            DataTable bt = null;

            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spSearchStudents", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", sid);
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable tb = new DataTable();
                tb.Load(reader);
                bt = tb;

                if (tb.Rows.Count == 0)
                {
                    MessageBox.Show($"Student ID: {sid} was not found");
                }
            }
            catch
            {
                MessageBox.Show($"Search was unsuccessful");
            }

            return bt;
        }

        public void UpdateCourse(string cid, string cname, string cdescription)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spUpdateCourse", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@courseid", cid);
                cmd.Parameters.AddWithValue("@coursename", cname);
                cmd.Parameters.AddWithValue("@courseDescrption", cdescription);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"{cname} course is updated");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }
        }

        public void UpdateStudent(int sid, string sname, string surname, string dob, string gender, string phone, string street, string city, string postalcode, string cid)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spUpdateStudents", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", sid);
                cmd.Parameters.AddWithValue("@Name", sname);
                cmd.Parameters.AddWithValue("@Surname", surname);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@street", street);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@postalcode", postalcode);
                cmd.Parameters.AddWithValue("@courseid", cid);
                cmd.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show($"{sname} {surname} is updated");
            }
            catch
            {
                MessageBox.Show("Operation was unsuccessful");
            }
        }


    }
}
