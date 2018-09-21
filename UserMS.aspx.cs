using System;

using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UserMS : System.Web.UI.Page
{
   
    public void databind()
    {

    }
    //退出
    protected void ImgBtnExit_Click(object sender, ImageClickEventArgs e)
    {
        Session["adminname"] = null;//清空Session["adminname"] 对象
        Response.Redirect("Login.aspx");//转到登录页面
    }

    //全选
    protected void cbCheckAll_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("cbisSelect");//查找每行中的CheckBox控件
            if (cbCheckAll.Checked)
            {
                cb.Checked = true;
            }
            else
            {
                cb.Checked = false;
            }
        }
        cbCheckAll.Checked = false;
        //Response.Redirect("admin.aspx");
    }

    //删除
    protected void ImgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("cbisSelect");//查找每行中的CheckBox控件
            if (cb.Checked)
            {
                string id = (GridView1.DataKeys[i].Value.ToString());
                User user = new global::User();
                if (user.deleteAll())
                {
                    Response.Write("<script>alert('删除成功')</script>");
                    Response.Redirect("UserMS.aspx");
                }
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {   //管理员修改
        if (Session["adminname"] != null)
        {
            if (e.CommandName == "uEdit")
            {
                //Response.Write("<script>alert('修改被单机了')</script>");
                GridViewRow gvr1 = (GridViewRow)(((ImageButton)(e.CommandSource)).NamingContainer);
                int index = gvr1.RowIndex;//获取当前行的索引
                //获取当前行数据在数据表中的ID值
                string id = (GridView1.DataKeys[index].Value.ToString());
                Response.Write(id);
                DropDownList drop_power = (DropDownList)GridView1.Rows[index].FindControl("drop_power");
                string sql = "update Dri_user set iflag = '" + (drop_power.SelectedItem.Text) + "',ipower ='0'  where user_id ='" + id + "'";
                User user = new User();
                SqlCommand cmd = new SqlCommand(sql, user.getCon());
                if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
                {
                    //Response.Write("<script>alert('设置成功')</script>");
                    Response.Redirect("UserMS.aspx");
                }


            }
            if (e.CommandName == "udelete")
            {
                //Response.Write("<script>alert('删除被点击了')</script>");
                GridViewRow gvr1 = (GridViewRow)(((ImageButton)(e.CommandSource)).NamingContainer);
                int index1 = gvr1.RowIndex;//获取当前行的索引
                //获取当前行数据在数据表中的ID值
                string id = (GridView1.DataKeys[index1].Value.ToString());
                Response.Write(id);
                //编写sql语句，删除所
                User user = new User();
                if (user.delete(id))
                {
                    //Response.Write("<script>alert（'删除成功'）</script>");
                    Response.Redirect("UserMS.aspx");
                }
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
         
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");
            e.Row.Attributes.Add("style", "height:28px");
        }

    }



}