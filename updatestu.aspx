<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatestu.aspx.cs" Inherits="updatestu" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>学员信息修改</title>
    <script type="text/javascript">
        function checkpassword() {

            if (document.getElementById("txtPassword").value.length < 6) {
                alert("密码长度至少六位");
                document.getElementById("txtPassword").value = "";
            }
        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 95%;
            height: 271px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 104px;
            text-align: right;
        }
        .style4
        {
            width: 259px;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            text-align: center;
            width: 104px;
        }
        .auto-style1 {
            width: 258px;
        }
    </style>
    <link  href="../css/style.css" rel="stylesheet" type="text/css" / >
</head>
<body>
    <form id="form1" runat="server">
           <h1 align="center">
               <img src="resource/img/wjgl_05.gif" /></h1>
            <table cellpadding="0" cellspacing="0" class="style1" align="center" border = "1">
                
                <tr>
                    <td class="style3">
                        用&nbsp; 户&nbsp; 名：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_Id" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImgBtnCheckUser" runat="server" 
                            ImageUrl="resource/img/zc_10.gif" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        昵　　称：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_Name" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Name" runat="server" 
                            ControlToValidate="TextBox_Name" Display="Dynamic" ErrorMessage="请输入昵称" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        密　　码：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_Pwd" runat="server" MaxLength="16" TextMode="Password" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_pwd" runat="server" 
                            ControlToValidate="TextBox_Pwd" Display="Dynamic" ErrorMessage="请输入密码" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        确认密码：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_Pwd2" runat="server" MaxLength="16" 
                            TextMode="Password" BorderColor="#999999" BorderStyle="Solid" 
                            BorderWidth="1px" Height="20px" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator_pwd" runat="server" 
                            ControlToCompare="TextBox_Pwd" ControlToValidate="TextBox_Pwd2" 
                            Display="Dynamic" ErrorMessage="两次密码不一致" Font-Size="9pt" ForeColor="#3399FF"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_pwd2" runat="server" 
                            ControlToValidate="TextBox_Pwd2" Display="Dynamic" ErrorMessage="请重新输入密码" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        邮　　箱：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_Mail" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Mail" runat="server" 
                            ControlToValidate="TextBox_Mail" Display="Dynamic" ErrorMessage="请输入邮箱" 
                            Font-Size="9pt" ForeColor="#6699FF"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_Mail" runat="server" 
                            ControlToValidate="TextBox_Mail" Display="Dynamic" ErrorMessage="邮箱格式错误" 
                            Font-Size="9pt" ForeColor="#3399FF" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                <td class="style3">生　　日：</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList_year" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList_month" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList_day" runat="server"></asp:DropDownList>
                </td>
                   
                <td></td>
                </tr>
                 <tr>
                <td class="style3">籍　　贯：</td>
                <td class="auto-style1"><asp:DropDownList ID="DropDownList_province" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList_city" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList_country" runat="server">
                    </asp:DropDownList></td>
                <td>#######################</td>
                </tr>
                 <tr>
                <td class="style3">工　　作：</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList_job" runat="server">
                    </asp:DropDownList>
                 </td>
                <td>#######################</td>
                </tr>
                 <tr>
                <td class="style3">头　　像：</td>
                <td class="auto-style1">
                    <asp:FileUpload ID="FileUpload_img" runat="server" /></td>
                <td>#######################</td>
                </tr>
                 <tr>
                <td class="style3" >说　　明：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox_info" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"  TextMode ="MultiLine " runat="server"></asp:TextBox></td>
                <td>#######################</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5" colspan="2">
                        <asp:ImageButton ID="ImgBtnRegUser" runat="server" 
                            ImageUrl="resource/img/zc2_14.gif" style="height: 28px"/>
                        &nbsp;
                        <img alt="" onclick="window.location.replace('Login.aspx');" 
                            src="resource/img/zc2_16.gif" style="cursor:hand" id="IMG1" /></td>
                </tr>
            </table>
    </form>
</body>
</html>
