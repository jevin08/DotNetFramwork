using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentAttedenceSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from SignUp where rollnumber=@roll ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@roll", RollNumberTextBox.Text);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows) {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('You have already Registred') </script>");
            }
            else
            {
                SqlConnection con1 = new SqlConnection(cs);
                string query1 = "insert into SIgnUp values(@fname,@lname,@gender,@csem,@rnumber,@password)";
                SqlCommand cmd1 = new SqlCommand(query1, con1);
                cmd1.Parameters.AddWithValue("@fname", FirstNameTextBox.Text);
                cmd1.Parameters.AddWithValue("@lname", LastNameTextBox.Text);
                cmd1.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@csem", CurrentSemTextBox.Text);
                cmd1.Parameters.AddWithValue("@rnumber", RollNumberTextBox.Text);
                cmd1.Parameters.AddWithValue("@password", PassWordTextBox.Text);
                con1.Open();
                int a = cmd1.ExecuteNonQuery();
                con1.Close();
                if (a > 0)
                {

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('SignUp Successfully ') </script>");


                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('SignUp Failed ') </script>");
                }

                con.Close();

            }



        }
    }
}