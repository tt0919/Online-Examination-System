﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="admin_AdminManage" %>
<%@ Register Src="../UserControls/Header2.ascx" TagName="Header2" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Fooder.ascx" TagName="Fooder" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生在线考试系统 管理员</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table bgcolor="#ffffff" border="0" bordercolor="#215dc6" cellpadding="0" cellspacing="0"
            height="278" width="778" align="center">
            <tr>
                <td colspan="2" class="style1">
                    <uc1:Header2 ID="Header2_1" runat="server" />
                </td>
            </tr>
            <tr>
                <td height="453" rowspan="2" width="165">
                    &nbsp;<iframe src=left.htm style="width: 165px; height: 453px" frameborder=0 scrolling=no></iframe>
                </td>
                <td bgcolor="#333300" style="text-align: left; height: 26px;">
                    <span style="font-size: 9pt; color: #ffffff">&nbsp;用户ID：</span><asp:Label ID="lblwz" runat="server" Font-Size="9pt" ForeColor="White"></asp:Label>&nbsp;&nbsp;<span
                        style="color: #ffffff">用户姓名：<asp:Label ID="lblname" runat="server" Font-Size="9pt"></asp:Label></span>&nbsp;
                    <span style="color: #ffffff">用户身份：管理员 </span>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="9pt" ForeColor="White"
                        OnClick="LinkButton1_Click" Font-Underline="False">【安全退出】</asp:LinkButton></td>
            </tr>
            <tr>
                <td height="155">
                    <iframe name="menu" frameborder=0 scrolling=auto style="width: 596px; height: 422px" src=StudentInfo.aspx></iframe>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" height="43">
                    <uc2:Fooder ID="Fooder1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
