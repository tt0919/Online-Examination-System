<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherInfo.aspx.cs" Inherits="admin_TeacherInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>教师基本信息</title>
    <link href="../Mystyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;</div>
        <fieldset style="width: 533px; height: 100%">
        <legend class="mailTitle">教师基本信息</legend>
            <br />
            <div class="style1">
        <asp:GridView ID="gvTeacher" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="517px" OnRowDeleting="gvTeacher_RowDeleting" AllowPaging="True" OnPageIndexChanging="gvTeacher_PageIndexChanging" PageSize="8">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField 
                    DataField="TeacherNum" HeaderText="教师编号" />
                <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" />
                <asp:BoundField DataField="TeacherPwd" HeaderText="教师密码" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            </Columns>
            <RowStyle ForeColor="#000066" Height="15px" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="15px" />
        </asp:GridView>
            </div>
        </fieldset>
    </form>
</body>
</html>
