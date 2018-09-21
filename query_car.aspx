<%@ Page Language="C#" AutoEventWireup="true" CodeFile="query_car.aspx.cs" Inherits="query_car" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(../resource/img/index.jpg)">
    <form id="form1" runat="server">
    <div>
     <table align="center">
        <tr>
            <td>
                输入查询:
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox_car" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
            </td>
        </tr>
    </table>
    </div>
        <center>
             <asp:GridView ID="GridView_query" runat="server" Height="109px" Width="304px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                 <FooterStyle BackColor="White" ForeColor="#000066" />
                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                 <RowStyle ForeColor="#000066" />
                 <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#007DBB" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </center>
       
    </form>
   
</body>
</html>
