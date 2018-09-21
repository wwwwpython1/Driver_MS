<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
  
    <title>后台管理</title>
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

<body >
     <form id="form2" runat="server">
        <table align ="center">
            <tr>
                <td  align="center"> <asp:ImageButton ID="ImageButton_show" runat="server" ImageUrl="resource/img/ht_03.gif" /> </td>
            </tr>
           
        </table>
      
    <center>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1"   onrowdatabound="GridView1_RowDataBound" 
                 EmptyDataText="暂时没有用户信息" 
                onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbisSelect" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_add" HeaderText="user_add" SortExpression="user_add" />
                <asp:BoundField DataField="user_btd" HeaderText="user_btd" SortExpression="user_btd" />
                <asp:BoundField DataField="user_mail" HeaderText="user_mail" SortExpression="user_mail" />
                <asp:BoundField DataField="user_job" HeaderText="user_job" SortExpression="user_job" />
                <asp:BoundField DataField="user_info" HeaderText="user_info" SortExpression="user_info" />
               <asp:BoundField DataField="iflag" HeaderText="iflag" SortExpression="iflag" />
               
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
          <AlternatingRowStyle Height="30px" />
            </asp:GridView>
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
       
         </asp:GridView>
         <hr>
           
        </center>
       
</body>
<asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="car_num" DataSourceID="SqlDataSource2" Height="138px" Width="909px">
    <Columns>
        <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
        <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" />
        <asp:BoundField DataField="car_type" HeaderText="car_type" SortExpression="car_type" />
        <asp:BoundField DataField="car_date" HeaderText="car_date" SortExpression="car_date" />
        <asp:BoundField DataField="car_num" HeaderText="car_num" ReadOnly="True" SortExpression="car_num" />
        <asp:TemplateField>
                   <ItemTemplate>
                   <a href ="updatecar.aspx?car_num=<%#Eval("car_num") %>">更新</a>
                   </ItemTemplate>
                </asp:TemplateField>
                 
                  <asp:TemplateField>
                  <ItemTemplate>
                   <a href ="delcar.aspx?car_num=<%#Eval("car_num") %>" onclick="return confirm('确定删除<%#Eval("car_num") %>')" >删除</a>
                   </ItemTemplate>
                </asp:TemplateField>
    </Columns>
     </asp:gridview>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_MSConnectionString %>" SelectCommand="SELECT * FROM [Dri_car]"></asp:SqlDataSource>
       
    </form>

</html>
