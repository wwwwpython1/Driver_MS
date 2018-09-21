using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// User 的摘要说明
/// </summary>
public class User
{

    private int user_id;//账号
    private string user_name;//昵称
    private string user_pwd;//密码
    private string user_add;//地址
    //private string user_btd;//生日
    private string user_mail;//邮箱
    private string user_job;//工作
    private string user_info;//简介
    private string user_img;//照片
    private string iflag;//身份
    private string ipower;//权限
    

    public int User_id
    {
        get{ return user_id;}
        set { user_id = value; }

    }
    public string User_name
    {
        get { return user_name; }
        set{    user_name = value;}
    }

    public string User_pwd
    {
        get { return user_pwd; }
        set { user_pwd = value; }
    }

   

    public string User_add
    {
        get { return user_add; }
        set { user_add = value; }
    }

    public void addUser()
    {
        throw new NotImplementedException();
    }

    //public string User_btd
    //{
    //    get { return user_btd; }
    //    set { user_btd = value; }
    //}
    

    public string User_mail
    {
        get { return user_mail; }
        set { user_mail = value; }
    }
   

    public string User_job
    {
        get { return user_job; }
        set { user_job = value; }
    }
    
    public string User_info
    {
        get { return user_info; }
        set { user_info = value; }
    }
   

    public string User_img
    {
        get { return user_img; }
        set { user_img = value; }
    }
    
    public string Iflag
    {
        get { return iflag; }
        set { iflag = value; }
    }
   
    public string Ipower
    {
        get { return ipower; }
        set { ipower = value; }
    }

   

    public User()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    //login
    public User(int user_id, string user_name)
    {
        this.user_id = user_id;
        this.User_name = user_name;
    }
    public User(int user_id, string user_name,string ipower)
    {
        this.user_id = user_id;
        this.User_name = user_name;
        this.ipower = ipower;
    }

    //添加的user
    public User(int user_id, string user_name, string user_pwd,string user_add, string user_mail, string user_job, string user_info, string user_img,string iflag)
    {
        this.user_id = user_id;
        this.User_name = user_name;
        this.user_pwd = user_pwd;
        this.user_add = user_add;
        //this.user_btd = user_btd;
        this.user_mail = user_mail;
        this.user_job = user_job;
        this.user_info = user_info;
        this.user_img = user_img;
        this.iflag = iflag;
    }
     public User(int user_id, string user_name, string user_pwd, string user_add, string user_mail, string user_job, string user_info, string user_img,string iflag,string ipower) {
        this.user_id = user_id;
        this.User_name = user_name;
        this.user_pwd = user_pwd;
        this.user_add = user_add;
        this.user_mail = user_mail;
        this.user_job = user_job;
        this.user_info = user_info;
        this.user_img = user_img;
        this.iflag = iflag;
        this.ipower = ipower;
    }
   

   

    public   SqlConnection getCon(){
        String mystr = ConfigurationManager.AppSettings["contentDB"];
        SqlConnection mycon = new SqlConnection();
        mycon.ConnectionString = mystr;
        mycon.Open();
        return  mycon;
    }
    //查重
    public Boolean checkName(string userId) {
        bool flag = false;
       // User user = null;
        string sql = "select count(*) from Dri_user where user_id='" + userId + "'";
        SqlCommand cmd = new SqlCommand(sql,this.getCon());
        if (int.Parse(cmd.ExecuteScalar().ToString())> 0)
        {
            flag = true;
        }
        return flag;
    }


    //添加
    public bool  add(User user) {
        bool flag = false;
        string sql = "insert into Dri_user(user_id,user_name,user_pwd,user_add,user_mail,user_job,user_info,user_img,iflag,ipower) values('" + user.user_id + "','" + user.user_name + "','" + user.user_pwd + "','" + user.user_add + "','" + user.user_mail + "','" + user.user_job + "','" + user.user_info + "','" + user.user_img + "','"+user.iflag+"','"+user.ipower+"') ";
        SqlCommand cmd = new SqlCommand(sql,this.getCon());
        if(int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }
    //更新
    public bool update(string userId) {
        bool flag = false;
        string sql = "update Dri_user set iflag = '管理员',ipower ='1'  where user_id ='"+ userId + "'";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0) {
            flag = true;
        }
        return flag;
    }
    //删除id

    public bool delete(string userId) {
        bool flag = false;
        string sql = "delete  from Dri_user where user_id = '"+userId+"'";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }
    //删除所有
    public bool deleteAll()
    {
        bool flag = false;
        string sql = "delete  from Dri_user";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }


    //登陆
    public User login(string userId, string userPwd, string ipower) {
        User user = null;
        string sql = "select *from  Dri_user where  user_id='" + userId + "' and user_pwd='" + userPwd + "' and  ipower='" + ipower + "'";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            user = new User();
            userId = reader[0].ToString();
            userPwd = reader[2].ToString();
            return user;
        }
        else
        {
            return null;
        }  
    }

   
    
    

}
