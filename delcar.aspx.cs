using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delcar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Car car = new Car();
        if (car.delete(Request["car_num"]))
        {
            Response.Write("<script>alert('删除成功')</script>");
            Response.Redirect("CarMS.aspx");
        }
        else {
            Response.Write("<script>alert('删除失败')</script>");
        }

    }
}