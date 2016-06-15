<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>在线考试</title>
    <link href="Mystyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 106px;
        }
        .style4
        {
            width: 95%;
            margin-top: 21px;
        }
        .style6
        {
            width: 502px;
            height: 134px;
        }
        .style7
        {
            width: 530px;
            height: 134px;
        }
        .style8
        {
            width: 530px;
            height: 299px;
        }
        .style9
        {
            width: 502px;
            height: 299px;
        }
        .style10
        {
            height: 299px;
        }
        .style11
        {
            height: 26px;
        }
        .style12
        {
            height: 25px;
        }
        .style16
        {
            width: 100px;
        }
        .style17
        {
            width: 37px;
        }
        .style18
        {
            height: 134px;
        }
        .style19
        {
            height: 2px;
        }
        .style20
        {
            text-align: right;
        }
        .style21
        {
            height: 241px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">

        <table align="center" background="Image/login.gif" border="0" 
        cellpadding="0" cellspacing="0" style="width: 100%; height: 600px">
            <tr>
                <td class="style7">
                    </td>
                <td class="style6">
                    </td>
                <td class="style18">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    <div class="style21">
                    </div>
                    <div class="style20">
                    </div>
                    </td>
                <td class="style9">
        <table class="style4">
            <tr>
                <td colspan="5" class="style19">
                    </td>
            </tr>
            <tr>
                <td height="25" class="style1">
                    &nbsp;</td>
                <td style="width: 69px">
                    <div align="center">
                        账&nbsp; 号：</div>
                </td>
                <td colspan="2" style="text-align: left">
                    <asp:TextBox ID="txtNum" runat="server" Height="13px" Width="125px"></asp:TextBox></td>
                <td style="text-align: left; " class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum"
                        Display="Dynamic" ErrorMessage="请输入学生证号" ForeColor="DarkGray" Font-Size="10pt">*</asp:RequiredFieldValidator>&nbsp;</td>
            </tr>
            <tr>
                <td height="25" class="style1">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    <div align="center">
                    密&nbsp; 码：</div>
                </td>
                <td colspan="2" height="25" style="text-align: left">
                    <asp:TextBox ID="txtPwd" runat="server" MaxLength="12" TextMode="Password" Width="125px" Height="13px"></asp:TextBox>&nbsp;</td>
                <td height="25" style="text-align: left; " class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="密码不为空" ForeColor="DimGray" Font-Size="10pt">*</asp:RequiredFieldValidator>&nbsp;</td>
            </tr>
            <tr>
                <td height="25" class="style1">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    <div align="center">
                        身&nbsp; 份：</div>
                </td>
                <td colspan="2" height="25" style="text-align: left">
                    <asp:DropDownList ID="ddlstatus" runat="server">
                        <asp:ListItem Selected="True">学生</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                        <asp:ListItem>管理员</asp:ListItem>
                    </asp:DropDownList>&nbsp;</td>
                <td height="25" class="style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" class="style1">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    <div align="center">
                    验证码：</div>
                </td>
                <td height="25" style="width: 22px; text-align: left">
                    <asp:TextBox ID="txtCode" runat="server" Height="13px" Width="60px"></asp:TextBox></td>
                <td style="text-align: left" class="style17">
                    <asp:Image ID="Image1" runat="server" Width="56px" BorderColor="Gray" BorderWidth="1px" Height="17px" ImageUrl="~/Image.aspx" /></td>
                <td height="25" style="text-align: left; " class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCode"
                        Display="Dynamic" ErrorMessage="请输入验证码" ForeColor="DimGray" Font-Size="10pt">*</asp:RequiredFieldValidator>&nbsp;</td>
            </tr>
            <tr>
                <td height="25" class="style1">
                    &nbsp;</td>
                <td height="25" style="width: 69px">
                    &nbsp;</td>
                <td height="25" style="width: 22px; text-align: left">
                    &nbsp;</td>
                <td style="text-align: left" class="style17">
                    &nbsp;</td>
                <td height="25" style="text-align: left; " class="style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: center" class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Button ID="btnconcel0" runat="server" Text="注册" OnClick="btnconce2_Click" 
                        CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
                    &nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: center" class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: center" class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5" class="style11">
                    <img height="16" src="images/icon-login-seaver.gif" width="16" /><a 
                        class="left_txt3" 
                        href="http://sighttp.qq.com/msgrd?v=3&amp;uin=1091751514&amp;site=qq&amp;menu=yes "> 
                    在线客服</a></td>
            </tr>
        </table>
                </td>
                <td class="style10">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td colspan="3">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
                </td>
            </tr>
    </table>
       
    </form>
</body>
</html>
