using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class updatecar : System.Web.UI.Page
{
     Car car = new Car();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string sql = "select *from Dri_car where car_num ='" + Request["car_num"] + "'";
            SqlCommand cmd = new SqlCommand(sql, car.getCon());
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                this.TextBox_user_name.Text = reader[0].ToString();
                this.TextBox_car_id.Text = reader[1].ToString();
                this.TextBox_car_type.Text = reader[2].ToString();
                this.TextBox_car_date.Text = reader[3].ToString();
                this.TextBox_car_num.Text = reader[4].ToString();
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string name = TextBox_user_name.Text;
        int id = int.Parse(TextBox_car_id.Text);
        string type = TextBox_car_type.Text;
        string date = TextBox_car_date.Text;
        string num = TextBox_car_num.Text;
       
        string sql = "update Dri_car set user_name = '"+ name + "', car_id = '"+ id + "', car_type = '" + type + "', car_date = '" + date + "' where car_num = '"+num+"'";
        car.getCon();
        SqlCommand cmd = new SqlCommand(sql,car.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            Response.Write("<script>alert('更新成功')</script>");
            Response.Redirect("CarMS.aspx");
        }
        else {
            Response.Write("<script>alert('更新失败')</script>");
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}