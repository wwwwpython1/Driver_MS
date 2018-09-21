using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class sys : System.Web.UI.Page
{
    User user = new global::User();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Page.IsPostBack==false) {
        //    Response.Write("用户名是" + Session["sysname"] + "密码是" + Session["syspwd"]);
        //    string sql = "select *from dri_user where user_id ='" + Session["sysname"] + "' and user_pwd = '"+ Session["syspwd"] + "'";
        //    SqlCommand cmd = new SqlCommand(sql, user.getCon());
        //    SqlDataReader reader = cmd.ExecuteReader();

        //    while (reader.Read())
        //    {
        //        Response.Write("地址" + reader[3].ToString());
        //    }
        //}
       
    }
}
