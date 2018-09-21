using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ImgBtnLogin_Click(object sender, ImageClickEventArgs e)
    {
        string power = null;

        if (RadioButton_admin.Checked) {
            power = "0";
        }
        if (RadioButton_sys.Checked) {
            power = "1";
        }
        else if (RadioButton_stu.Checked) {
            power = "2";
        }

        User user = new User(int.Parse(TextBox_Name.Text), TextBox_Pwd.Text, power);

        if (user.login(TextBox_Name.Text, TextBox_Pwd.Text, power) != null)
        {       
            //Response.Write("我是" + power + "登陆成功");
            if (power.Equals("0")) {
                Session["adminname"] = TextBox_Name.Text;
                Session["adminpwd"] = TextBox_Pwd.Text;
                Response.Redirect("Manager.aspx");
                //Response.Redirect("admin.aspx");
            }
            if (power.Equals("1"))
            {
                Session["sysname"] = TextBox_Name.Text;
                Session["syspwd"] = TextBox_Pwd.Text;
                Response.Redirect("sys.aspx");
            }
            else {
                Session["stuname"] = TextBox_Name.Text;
                Session["stupwd"] = TextBox_Pwd.Text;
                Response.Redirect("stu.aspx");
            }
        }else{
            Response.Write("该用户名不存在，登陆失败");
            Response.Redirect("Login.aspx");
        }
    
    }

    protected void ImgBtnGotoReg_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserRegister.aspx");
    }
}
