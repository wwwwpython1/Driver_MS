<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sys.aspx.cs" Inherits="sys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>教练管理</title>
</head>
<body style="background-image:url(../resource/img/index.jpg)">

    <form id="form2" runat="server">
         
   

           <div>
               <h1 align="center">个人信息</h1>
                <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
            <Columns>
                
                <asp:BoundField DataField="user_name" HeaderText="用户姓名" SortExpression="user_name" />
                <asp:BoundField DataField="user_add" HeaderText="用户地址" SortExpression="user_add" />
                <asp:BoundField DataField="user_mail" HeaderText="用户邮件" SortExpression="user_mail" />
                <asp:BoundField DataField="user_job" HeaderText="用户工作" SortExpression="user_job" />
                <asp:BoundField DataField="user_info" HeaderText="用户信息" SortExpression="user_info" />
                <asp:BoundField DataField="user_img" HeaderText="用户图像" SortExpression="user_img" />
                <asp:BoundField DataField="iflag" HeaderText="用户身份" SortExpression="iflag" />
               
                <asp:TemplateField HeaderText="预约情况">
                    <ItemTemplate>
                   <a href ="bookCar.aspx?user_name=<%#Eval("user_name") %>">预约情况</a>
                   </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_MSConnectionString %>" SelectCommand="SELECT * FROM [Dri_user]"></asp:SqlDataSource>
        </center>

           </div>

                <div>
                    <h1 align ="center">车辆信息</h1>
                    <center>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="car_num" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="user_name" HeaderText="车主姓名" SortExpression="user_name" />
                        <asp:BoundField DataField="car_id" HeaderText="驾驶证" SortExpression="car_id" />
                        <asp:BoundField DataField="car_type" HeaderText="汽车类型" SortExpression="car_type" />
                        <asp:BoundField DataField="car_date" HeaderText="购买日期" SortExpression="car_date" />
                        <asp:BoundField DataField="car_num" HeaderText="车牌号" ReadOnly="True" SortExpression="car_num" />
                    </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_MSConnectionString %>" SelectCommand="SELECT * FROM [Dri_car]"></asp:SqlDataSource>
                    </center>
                </div>

        </form>
</body>
</html>
