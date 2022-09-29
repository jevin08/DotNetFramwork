using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentAttedenceSystem
{
    public partial class Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!="teacher" && Session["password"] != "Ce@1234567")
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["rollnumber"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterRoll")).Text;
            SqlDataSource1.InsertParameters["studentname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterStudent")).Text;
            SqlDataSource1.InsertParameters["sem"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterSem")).Text;
            SqlDataSource1.InsertParameters["teachername"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterTeacher")).Text;
            SqlDataSource1.InsertParameters["subjectname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterSubject")).Text;
            SqlDataSource1.InsertParameters["date"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterDate")).Text;

            int a = SqlDataSource1.Insert();

            if (a > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Attedence Taken SuccessFully') </script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Attedence didn't Take SuccessFully') </script>");
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["password"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}