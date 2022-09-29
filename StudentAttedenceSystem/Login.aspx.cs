using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace StudentAttedenceSystem
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if(PassTextBox.Text== "Ce@1234567" && RollTextBox.Text == "Teacher")
            {
                Session["teacher"] = "Teacher";
                Session["password"] = "Ce@1234567";
                Response.Redirect("Teacher.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(cs);
                string query = "select * from SignUp where rollnumber=@roll and password=@pass";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@roll", RollTextBox.Text);
                cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
                con.Open();

                SqlDataReader dr =  cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Session["rollnumber"] = RollTextBox.Text;
                    //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts", "<script> alert('Login Successfully') </script>");
                    Response.Write("<script> alert('Login SuccessFully') ; </script>");
                    Response.Redirect("Student.aspx");
                }
                else
                {
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Please Enter correct roll number and password ') </script>");
                    Response.Write("<script> alert('Please Eneter Correct RollNumber ans password') ; </script>");
                }
                con.Close();
            }
        }
    }
}