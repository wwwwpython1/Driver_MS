<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatecar.aspx.cs" Inherits="updatecar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>车辆更新</title>
    <style type="text/css">


        .style1
        {
            width: 95%;
            height: 271px;
        }
        .style3
        {
            width: 104px;
            text-align: right;
        }
        .auto-style1 {
            width: 258px;
        }
        .style5
        {
            text-align: left;
        }
        </style>
</head>
<body style="background-image:url(../resource/img/index.jpg)">

    <form id="form1" runat="server">
    <div>
    
    </div>
           <h1 align="center"> 车辆更新界面
               &nbsp;</h1>
            <table cellpadding="0" cellspacing="0" class="style1" align="center" border = "1">
                
                <tr>
                    <td class="style3">
                        用&nbsp; 户：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_user_name" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox_user_name" Display="Dynamic" ErrorMessage="不能为空" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style3">
                        车牌编号:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_car_id" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_num" runat="server" 
                            ControlToValidate="TextBox_car_id" Display="Dynamic" ErrorMessage="不能为空" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        车辆类别:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_car_type" runat="server" MaxLength="16" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_type" runat="server" 
                            ControlToValidate="TextBox_car_type" Display="Dynamic" ErrorMessage="不能为空" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        购车日期：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_car_date" runat="server" MaxLength="16" 
                             BorderColor="#999999" BorderStyle="Solid" 
                            BorderWidth="1px" Height="20px" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_date" runat="server" 
                            ControlToValidate="TextBox_car_date" Display="Dynamic" ErrorMessage="不能为空" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        车辆驾驶证：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox_car_num" runat="server" AutoCompleteType="Disabled" 
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="20px" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox_car_num" Display="Dynamic" ErrorMessage="不能为空" 
                            Font-Size="9pt" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                    </td>   
                </tr>

               
                <tr>
                    
                    <td class="style5" colspan="2">
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="更新" Width="80px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" ForeColor="#3333CC" OnClick="Button1_Click" Text="重置" Width="78px" />
                    </td>
                    <td class="style5">
                        </td>
                </tr>
            </table>
    </form>
</body>
</html>
