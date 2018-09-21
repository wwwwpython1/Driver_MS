<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>登陆系统</title>
    <style type="text/css" >
       
    </style>
      <link  href="../css/style.css" rel="stylesheet" type="text/css" / >
</head>
<body style="background-image:url(../resource/img/index.jpg)">
    <form id="form1" runat="server">
    <h1 align="center">登陆界面</h1>
            <table cellpadding="0" cellspacing="0" class="style1" align="center" 
                style="font-size: small">
                <tr>
                    <td class="style3">
                        用户名：</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox_Name" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        Display="Dynamic" ErrorMessage="用户名不能为空" Font-Size="9pt" ForeColor="White" 
                            ControlToValidate="TextBox_Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="height: 27px">
                        密 码：</td>
                    <td class="style9" style="height: 27px">
                        <asp:TextBox ID="TextBox_Pwd" runat="server" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="175px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        Display="Dynamic" ErrorMessage="密码不能为空" Font-Size="9pt" ForeColor="White" 
                            ControlToValidate="TextBox_Pwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        请选择：</td>
                    <td class="style10">
                        <asp:RadioButton ID="RadioButton_admin" runat="server" Text="管理员"  GroupName="Manager" value="0"/>
                        <asp:RadioButton ID="RadioButton_sys" runat="server"  Text="教练" GroupName="Manager" value="1"/>
                        <asp:RadioButton ID="RadioButton_stu" runat="server" Text="学员" GroupName="Manager" value="2"/>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:ImageButton ID="ImgBtnLogin" runat="server" 
                            ImageUrl="resource/img/zc2_16.gif" onclick="ImgBtnLogin_Click"/>
                        &nbsp;<asp:ImageButton ID="ImgBtnGotoReg" runat="server" CausesValidation="False" 
                            ImageUrl="resource/img/zc2_14.gif" onclick="ImgBtnGotoReg_Click"/>
                    </td>
                </tr>
            </table>

    </form>
</body>
</html>
