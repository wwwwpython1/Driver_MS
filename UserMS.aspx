<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserMS.aspx.cs" Inherits="UserMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
  
    <title>用户后台管理</title>
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

<body style="background-image:url(../resource/img/index.jpg)">

     <form id="form2" runat="server">
        <table align ="center">
            <tr>
                <td  align="center"> <asp:ImageButton ID="ImageButton_show" runat="server" ImageUrl="resource/img/ht_03.gif" /> </td>
            </tr>
           
        </table>
      
        
         <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1"   onrowdatabound="GridView1_RowDataBound" 

                onrowcommand="GridView1_RowCommand" >
            <Columns>
                <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbisSelect" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:BoundField DataField="user_id" HeaderText="用户编号" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="用户姓名" SortExpression="user_name" />
                <asp:BoundField DataField="user_add" HeaderText="用户地址" SortExpression="user_add" />
                <asp:BoundField DataField="user_mail" HeaderText="用户邮箱" SortExpression="user_mail" />
                <asp:BoundField DataField="user_job" HeaderText="用户工作" SortExpression="user_job" />
                <asp:BoundField DataField="user_info" HeaderText="用户信息" SortExpression="user_info" />
                <asp:BoundField DataField="iflag" HeaderText="用户身份" SortExpression="iflag" />
               
                    <asp:TemplateField HeaderText="级别">
                        <ItemTemplate>
                            <asp:DropDownList ID="drop_power" runat="server">
                                <asp:ListItem Value="0">普通用户</asp:ListItem>
                                <asp:ListItem Value="1">管理员</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="更新">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton_edit" runat="server" CommandName="uEdit" 
                                ImageUrl="resource/img/ht_14.gif" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="删除">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton_del" runat="server" CommandName="udelete" 
                                ImageUrl="resource/img/ht_16.gif" />
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
            </asp:GridView>

          <AlternatingRowStyle Height="30px" />
            </asp:>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_MSConnectionString %>" SelectCommand="SELECT * FROM [Dri_user]"></asp:SqlDataSource>
                &nbsp;<table align="center" cellpadding="0" cellspacing="0" class="style2">
                <tr>
                    <td class="style3" align ="center">
                        &nbsp;</td>
                    <td  align="center">
                        &nbsp;<asp:CheckBox ID="cbCheckAll" runat="server" AutoPostBack="True" 
                            Text="全选" oncheckedchanged="cbCheckAll_CheckedChanged" />
                        <asp:ImageButton ID="ImgBtnDelete" runat="server" ImageUrl="resource/img/ht_20.gif" 
                            onclick="ImgBtnDelete_Click" Height="22px" Width="69px" />
                    </td>
                </tr>
                     
            </table>
            <table>
                <tr>
                <td align="right"><asp:ImageButton    ID="ImgBtnExit" runat="server" ImageUrl="resource/img/ht_05.gif" 
                 onclick="ImgBtnExit_Click" />&nbsp;</td>
            </tr>
             </table>
       

        
              </form>
     
       
</body>