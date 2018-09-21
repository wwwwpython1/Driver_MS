using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CarRegister : System.Web.UI.Page
{
    public SqlConnection getCon()
    {
        String mystr = ConfigurationManager.AppSettings["contentDB"];
        SqlConnection mycon = new SqlConnection();
        mycon.ConnectionString = mystr;
        mycon.Open();
        return mycon;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ImgBtnRegUser_Click(object sender, ImageClickEventArgs e)
    {
        string name = TextBox_user_name.Text;
        int id = int.Parse(TextBox_car_id.Text);
        string num = TextBox_car_num.Text;
        string type = TextBox_car_type.Text;
        string date = TextBox_car_date.Text;
        Car car = new Car(name,id,type,date,num);
        if (car.add(car))
        {
            Response.Write("<script>alert('添加车辆信息成功')</script>");
            Response.Redirect("CarMS.aspx");
        }
        else {
            Response.Write("<script>alert('添加车辆信息失败')</script>");
        }


    }

    public void reset() {
        this.TextBox_user_name .Text= "";
        this.TextBox_car_num.Text = "";
        this.TextBox_car_type.Text = "";
        this.TextBox_car_id.Text = "";
        this.TextBox_car_date.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.reset();
    }
}