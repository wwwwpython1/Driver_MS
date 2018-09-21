using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Car
/// </summary>
public class Car
{
    private string username;
    private int carid;
    private string cartype;
    private string cardate;
    private string carnum;

    

    public string Cartype
    {
        get
        {
            return cartype;
        }

        set
        {
            cartype = value;
        }
    }

    public string Cardate
    {
        get
        {
            return cardate;
        }

        set
        {
            cardate = value;
        }
    }

  

    public int Carid
    {
        get
        {
            return carid;
        }

        set
        {
            carid = value;
        }
    }

    public string Username
    {
        get
        {
            return username;
        }

        set
        {
            username = value;
        }
    }

    

    public string Carnum
    {
        get
        {
            return carnum;
        }

        set
        {
            carnum = value;
        }
    }

    public Car(string username,int carid,string cartype,string cardate,string carnum) {
        this.username = username;
        this.carid = carid;
        this.cartype = cartype;
        this.cardate = cardate;
        this.carnum = carnum;
    }

    public Car()
    {
    }

    public SqlConnection getCon()
    {
        String mystr = ConfigurationManager.AppSettings["contentDB"];
        SqlConnection mycon = new SqlConnection();
        mycon.ConnectionString = mystr;
        mycon.Open();
        return mycon;
    }
    //添加
    public bool add(Car car) {
        bool flag = false;
        string sql = "insert into Dri_car(user_name,car_id,car_type,car_date,car_num) values('"+car.username+"','"+car.carid+"','"+car.cartype+"','"+car.cardate+"','"+car.carnum+"')";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }
    //删除
    public bool  delete(string carnum)
    {
        bool flag = false;
        string sql = "delete from Dri_car where car_num='"+carnum+"'";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }
    //更新
    public bool update(string  carnum) {
        bool flag = false;
        Car car = new Car();
        string sql = "update Dri_car set user_name = '"+car.username+"',car_id='"+car.carid+"',car_type='"+car.cartype+"',car_date='"+car.cardate+"' where car_num ='"+carnum+"'";
        SqlCommand cmd = new SqlCommand(sql, this.getCon());
        if (int.Parse(cmd.ExecuteNonQuery().ToString()) > 0)
        {
            flag = true;
        }
        return flag;
    }

}