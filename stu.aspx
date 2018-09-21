<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu.aspx.cs" Inherits="stu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="background-image:url(../resource/img/index.jpg)">

    <form id="form1" runat="server">
         <h1 align="center">个人信息</h1>
   

            
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </center>
        </form>
</body>
</html>
