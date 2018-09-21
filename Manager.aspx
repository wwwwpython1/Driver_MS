<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理系统</title>
    <style type="text/css">
        .auto-style1 {
            width: 904px;
            height: 224px;
        }
        .auto-style2 {
            width: 904px;
            height: 224px;
            margin-top: 20px;
        }
    </style>
</head>
<body style="background-image:url(../resource/img/index.jpg)">

    
    <form id="form1" runat="server">
     
    <div>
    
    &nbsp;
    
    </div>
         
       
        <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Width="234px" Height="317px">
            
            
            <Nodes>
                
                <asp:TreeNode Text="驾校管理系统" Value="驾校管理系统">
                    <asp:TreeNode Text="人员管理" Value="人员管理">
                        <asp:TreeNode Text="添加人员" Value="添加人员"  NavigateUrl="UserRegister.aspx" ></asp:TreeNode>
                        <asp:TreeNode Text="显示人员" Value="显示人员" NavigateUrl="UserMS.aspx" ></asp:TreeNode>
                         <asp:TreeNode Text="查询人员" Value="查询人员"  NavigateUrl="query_user.aspx" ></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="车辆管理" Value="车辆管理">
                        <asp:TreeNode Text="添加车辆" Value="添加车辆"  NavigateUrl="CarRegister.aspx" ></asp:TreeNode>
                        <asp:TreeNode Text="显示车辆" Value="显示车辆"  NavigateUrl="CarMS.aspx"></asp:TreeNode>
                         <asp:TreeNode Text="查询车辆" Value="查询车辆"  NavigateUrl="query_car.aspx" ></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
           
        </asp:TreeView>
       
    </form>
    
</body>
</html>
