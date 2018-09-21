<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarMS.aspx.cs" Inherits="CarMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
  
    <title>车辆后台管理</title>
   <link  href="../css/style.css" rel="stylesheet" type="text/css" / >
    <link  href="../css/style.css" rel="stylesheet" type="text/css" / >
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 88%;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 56px;
        }
        </style>
</head>

<body style="background-image:url(../resource/img/index.jpg)" >
     <form id="form2" runat="server">
        <table align ="center">
            <tr>
                <td  align="center"> <asp:ImageButton ID="ImageButton_show" runat="server" ImageUrl="resource/img/ht_03.gif" /> </td>
            </tr>
           
        </table>
      
   
        <center> 
        <asp:GridView ID="GridView1"   runat="server" AutoGenerateColumns="False" DataKeyNames="car_num" DataSourceID="SqlDataSource2" Height="138px" Width="909px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"   >

         <Columns >
        <asp:BoundField DataField="user_name" HeaderText="用户名" SortExpression="user_name" />
        <asp:BoundField DataField="car_id" HeaderText="驾驶证" SortExpression="car_id" />
        <asp:BoundField DataField="car_type" HeaderText="车品牌" SortExpression="car_type" />
        <asp:BoundField DataField="car_date" HeaderText="购买日期" SortExpression="car_date" />
        <asp:BoundField DataField="car_num" HeaderText="车牌号" ReadOnly="True" SortExpression="car_num" />
        <asp:TemplateField HeaderText="操作" >
                   <ItemTemplate>
                   <a href ="updatecar.aspx?car_num=<%#Eval("car_num") %>">更新</a>
                   </ItemTemplate>
                </asp:TemplateField>
                 
                  <asp:TemplateField HeaderText="操作">
                  <ItemTemplate>
                   <a href ="delcar.aspx?car_num=<%# Eval("car_num") %>" onclick="return confirm('确定删除<%#Eval("car_num") %>')" >删除</a>
                   </ItemTemplate>
                </asp:TemplateField>
    </Columns>
   
    
   
           
    
   
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_MSConnectionString %>" SelectCommand="SELECT * FROM [Dri_car]"></asp:SqlDataSource>
       
    </form>
    </body>

</html>