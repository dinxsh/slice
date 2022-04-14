using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Slice.User
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }

        protected void RegisterFunc(object sender, EventArgs e)
            {            
            try
            {
                String str;
                str = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mr\\source\\repos\\Slice\\Slice\\App_Data\\MainData.mdf;Integrated Security=True";
                SqlConnection cn = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand("CustSP", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@case", 1);
                cmd.Parameters.AddWithValue("@name", NameTxt.Text);
                cmd.Parameters.AddWithValue("@uname", UserNameTxt.Text);
                cmd.Parameters.AddWithValue("@number", NumTxt.Text);
                cmd.Parameters.AddWithValue("@email", EmailTxt.Text);
                cmd.Parameters.AddWithValue("@password", PassText.Text);
                cmd.Parameters.AddWithValue("@InsertedID", SqlDbType.Int);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();                
                Session["logged_in"] = "1";
                Response.Redirect("~/User/Home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error! Please try again later" + ex + "');</script>");
            }
        }
        
    }
}