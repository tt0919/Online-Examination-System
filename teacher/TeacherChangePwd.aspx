<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherChangePwd.aspx.cs" Inherits="teacher_TeacherChangePwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>教师修改密码</title>
    <link href="../Mystyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 126px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div style="text-align: center" class="style2">
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
        <fieldset style="width: 344px; height: 178px; text-align: left">
            <legend class="mailTitle">教师修改密码</legend>
            <div class="style2">
            <br />
            &nbsp;<br />
            </div>
            <table align="center" border="0" cellpadding="0" cellspacing="0" width="316" 
                class="style1">
                <tr>
                    <td style="width: 220px; " class="style2">
                        &nbsp;请输入旧密码：</td>
                    <td width="281">
                        <asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 220px; " class="style2">
                        &nbsp;请输入新密码：</td>
                    <td>
                        <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 220px; " class="style2">
                        &nbsp;确认输入新密码：</td>
                    <td>
                        <asp:TextBox ID="txtNewPwdA" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        &nbsp;<asp:Button ID="btnchange" runat="server" OnClick="btnchange_Click" Text="确定修改" /></td>
                </tr>
            </table>
        </fieldset>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
