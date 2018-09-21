using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class query_user : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        User user = new global::User();

                SqlConnection conn = user.getCon();
                SqlDataAdapter sda = new SqlDataAdapter("select *from Dri_user where user_id = '" + TextBox_user.Text + "'", conn);
                DataSet Ds = new DataSet();
                sda.Fill(Ds, "User_query");

                //使用DataSet绑定时，必须同时指明DateMember 
                this.GridView_query.DataSource = Ds;
                this.GridView_query.DataMember = "User_query";

                //也可以直接用DataTable来绑定 
                this.GridView_query.DataSource = Ds.Tables["User_query"];
                 GridView_query.DataBind();



    }
}