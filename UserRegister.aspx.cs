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
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    User user = new User();
    public SqlConnection getCon()
    {
        String mystr = ConfigurationManager.AppSettings["contentDB"];
        SqlConnection mycon = new SqlConnection();
        mycon.ConnectionString = mystr;
        mycon.Open();
        return mycon;
    }
    public void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack) {
            //DropDownList_province.Items.Add("请选择:");
            string sql = "select *from area where RIGHT(parentID,4) = '0000'";
            SqlCommand cmd = new SqlCommand(sql, this.getCon());
            SqlDataReader reader = cmd.ExecuteReader();
            //
            int i=0;
            while (reader.Read())
            {
                //DropDownList_city.Text
                DropDownList_province.Items.Add(reader[1].ToString());              
                DropDownList_province.Items[i].Value = reader[2].ToString().Substring(0,2);
                i = i + 1;
            }
            this.getCon().Close();
            reader.Close();
        }    
           
       
    }

  

    public void ImgBtnCheckUser_Click(object sender, ImageClickEventArgs e)
    {
        if (!Page.IsPostBack) {
            string sql = "select count(*) from Dri_user where user_id='" + TextBox_Id.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, this.getCon());
            if (int.Parse(cmd.ExecuteScalar().ToString()) > 0)
            {
                Response.Write("<script>alert(不能注册')</script>");
                Response.Redirect("UserRegister.aspx");
            }
            else
            {
                Response.Write("<script>alert(可以注册')</script>");
            }
        }

       
    }

    public void ImgBtnRegUser_Click(object sender, ImageClickEventArgs e)
    {
        int userid = int.Parse(TextBox_Id.Text);
        string username = TextBox_Name.Text;
        string userpwd = TextBox_Pwd.Text;
        string userpwd2 = TextBox_Pwd2.Text;
        string useradd = DropDownList_province.Text+"省"+DropDownList_city.Text+"市" + DropDownList_country.Text+"县";
        string usermail = TextBox_Mail.Text;
        string userjob = DropDownList_job.Text;
        string userinfo = TextBox_info.Text;
        String fullFileName = FileUpload_img.PostedFile.FileName;
        string fileName = fullFileName.Substring(fullFileName.LastIndexOf("\\") + 1);
        string userimg = fileName;
        string iflag = DropDownList_iflag.Text;
        string ipower = null ;
        if (iflag == "教练")
        {
            ipower = 1+"";
        }
        else
        {
            ipower = 2 + "";
        }
        
        User user = new User(userid,username,userpwd, useradd, usermail,userjob,userinfo,userimg,iflag,ipower);
        if (Page.IsValid)
        {
            if (user.add(user))
            {
                Response.Write("<script>alert('添加成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }
        }
       
    }


   
    //省
    protected void DropDownList_province_SelectedIndexChanged(object sender, EventArgs e)
    {

            DropDownList_city.Items.Clear();
            int n1 = DropDownList_province.SelectedIndex ;
            string index1 = DropDownList_province.SelectedValue ;
            string sql = "select *from area where right(parentId,2)='00' and   right(parentId,4)<>'0000' and left(parentId,2)='" + index1 + "' ";
            SqlCommand cmd = new SqlCommand(sql, this.getCon());
            SqlDataReader reader = cmd.ExecuteReader();

            int i = 0;
            while (reader.Read())
            {
                //
                DropDownList_city.Items.Add(reader[1].ToString());
                DropDownList_city.Items[i].Value = reader[2].ToString().Substring(0, 4);//保存的市
                i = i + 1;

            }
            this.getCon().Close();
            reader.Close();
        
           






    }
    //市
    protected void DropDownList_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList_country.Items.Clear();
        //int index1 = int.Parse(DropDownList_province.SelectedIndex.ToString()) + 1;
        //string sql1 = "select id from area where parentId='" + index1 + "'";
        //DropDownList_province.Items[i].Value
        int i = 0;
        //int np = DropDownList_province.SelectedIndex;
        string city = null;
       
        
             city= DropDownList_city.Items[i].Value;//shide zhi  
        
       
       // i++;
        string index = DropDownList_city.SelectedValue;

        string sql = "select *from area where left(parentId,4)='"+city+"' and   right(parentId,2)<>'00' ";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        SqlDataReader reader = cmd.ExecuteReader();
        //int i = 0;
        while (reader.Read())
        {
            
            DropDownList_country.Items.Add(reader[1].ToString());
            //DropDownList_country.Items[i].Value = reader[2].ToString().Substring(0, 4);
           // i = i + 1;

        }
        this.getCon().Close();
        reader.Close();







        // SqlCommand cmd = new SqlCommand(sql1,this.getCon());
        //SqlDataReader reader1 = cmd.ExecuteReader();

        //if (reader1.Read()) {
        //    string index2 = reader1[0].ToString();
        //    string index = index1 + index2 + "";
        //    string sql = "select * from area where parentId='" + index + "'";
        //    SqlCommand cmd2 = new SqlCommand(sql, this.getCon());
        //    SqlDataReader reader2 = cmd2.ExecuteReader();
        //    reader1.Close();
        //    while (reader2.Read())
        //    {

        //        DropDownList_country.Items.Add(reader2[1].ToString());
        //    }
        //    this.getCon().Close();

        //    reader2.Close();
        //}










    }

    //县
    protected void DropDownList_country_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
