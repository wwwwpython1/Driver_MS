using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class query_car : System.Web.UI.Page
{
    //User user = new global::User();
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        User user = new global::User();

        SqlConnection conn = user.getCon();
        SqlDataAdapter sda = new SqlDataAdapter("select *from Dri_car where car_num like '" + TextBox_car.Text + "%'", conn);
        DataSet Ds = new DataSet();
        sda.Fill(Ds, "Car_query");

        //使用DataSet绑定时，必须同时指明DateMember 
        this.GridView_query.DataSource = Ds;
        this.GridView_query.DataMember = "Car_query";

        //也可以直接用DataTable来绑定 
        this.GridView_query.DataSource = Ds.Tables["Car_query"];
        GridView_query.DataBind();

    }
}