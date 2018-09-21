using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CarMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//如果是数据绑定行
        {
            //鼠标经过时，行背景色变 
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
            //鼠标移出时，行背景色变 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");
            e.Row.Attributes.Add("style", "height:28px");//设置行的高度
        }

    }
}