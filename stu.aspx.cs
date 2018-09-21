using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;                                      
public partial class stu : System.Web.UI.Page
{ User user = new global::User();
   
    protected void Page_Load(object sender, EventArgs e)
    {   
        //Response.Write("用户名是" + Session["stuname"] + "密码是" + Session["stupwd"]);
        //string sql = "select *from dri_user where user_id ='" + Session["stuname"] + "' and user_pwd = '" + Session["stupwd"] + "'";
        //SqlCommand cmd = new SqlCommand(sql, user.getCon());

        //SqlDataReader reader = cmd.ExecuteReader();

        //while (reader.Read()) {
            
        //}

        User user = new global::User();

        SqlConnection conn = user.getCon();
        SqlDataAdapter sda = new SqlDataAdapter("select *from Dri_user where user_name = '" + Session["stuname"] + "'", conn);
        DataSet Ds = new DataSet();
        sda.Fill(Ds, "User_query");

        //使用DataSet绑定时，必须同时指明DateMember 
        this.GridView1.DataSource = Ds;
        this.GridView1.DataMember = "User_query";

        //也可以直接用DataTable来绑定 
        this.GridView1.DataSource = Ds.Tables["User_query"];
        GridView1.DataBind();


    }
}