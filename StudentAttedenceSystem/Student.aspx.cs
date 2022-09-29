using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentAttedenceSystem
{
    public partial class Student : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rollnumber"]==null) 
            {
                Response.Redirect("Login.aspx");
            }
            //Response.Write("hello" + Session["rollnumber"]);

            if (!IsPostBack)
            {
                //LabelUser.enable

                //String name = "";
                SqlConnection con = new SqlConnection(cs);
                String query = "select * from Attedence where rollnumber=@roll";
                SqlCommand cmd = new SqlCommand(query ,con);
                string value = Session["rollnumber"].ToString();
                cmd.Parameters.AddWithValue("@roll", value);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1px solid blue' cellpadding='4' cellspacing='4' style='color:blue'>");
                table.Append("<tr><th>ID</th><th>Roll Number</th><th>Student Name</th><th>Sem</th><th>Teacher Name</th><th>Subject Name</th><th>Date</th>");
                table.Append("</tr>");
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        //name = rd[2].ToString();
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("<td>" + rd[6] + "</td>");
                        table.Append("</tr>");
                    }
                }
                //Label2.Text = "RoLL NO : "+ Session["rollnumber"].ToString();
                //Label1.Text = "Hii  " + name;
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                con.Close();


                SqlConnection con1 = new SqlConnection(cs);
                String query1 = "select * from SignUp where rollnumber=@roll";
                SqlCommand cmd1 = new SqlCommand(query1, con1);
                cmd1.Parameters.AddWithValue("@roll", value);
                con1.Open();
                SqlDataReader rd1 = cmd1.ExecuteReader();
                String first = "", last = "", gender = "";
                String sem = "";
                if (rd1.HasRows)
                {
                    while (rd1.Read())
                    {
                         first = rd1[1].ToString();
                         last = rd1[2].ToString();
                         gender = rd1[3].ToString();
                         sem = rd1[4].ToString();
                    }
                }
                rd.Close();
                Label1.Text = "Hello  "+ first + " " + last;
                Label2.Text = "Gender :" + gender;
                Label3.Text = "CurrentSem :" + sem;
                con1.Close();

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["rollnumber"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String query = "delete from Attedence where rollnumber=@roll";
            SqlCommand cmd = new SqlCommand(query, con);
            string value = Session["rollnumber"].ToString();
            cmd.Parameters.AddWithValue("@roll", value);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            deleteInSignUp();
        }
        void deleteInSignUp()
        {
            SqlConnection con = new SqlConnection(cs);
            String query = "delete from SignUp where rollnumber=@roll";
            SqlCommand cmd = new SqlCommand(query, con);
            string value = Session["rollnumber"].ToString();
            cmd.Parameters.AddWithValue("@roll", value);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            Session["rollnumber"] = null;
            //Response.Write("Record deleted successfully");
            //Response.Redirect("Login.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('SignUp Successfully ') </script>");
            Page_Load(null,null);

        }
    }
}