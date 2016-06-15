<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentexam.aspx.cs" Inherits="student_studentexam" %>

<%@ Register Src="../UserControls/Fooder.ascx" TagName="Fooder" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Header1.ascx" TagName="Header1" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生登录</title>
      <style type="text/css">
body {
 background-image: url(../Image/back.jpg);
}
          .style1
          {
              width: 87px;
          }
          .style2
          {
              font-size: xx-large;
              font-family: 华文行楷;
          }
      </style>
    <link href="../Mystyle.css" rel="stylesheet" type="text/css" />
</head>
<body background="../Image/back_01.gif">
    <form id="form1" runat="server">
 <div style="text-align: center">
        &nbsp;</div>
        <table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0"
            width="778">
            <tr>
                <td colspan="6" style="height: 46px">
                    <uc2:Header1 ID="Header1_1" runat="server" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#ecf9ff" height="24" class="style1">
                    <div align="right">
                        学号：</div>
                </td>
                <td bgcolor="#ecf9ff" height="24" style="text-align: left" width="134">
        <asp:Label ID="lblNum" runat="server" Text="Label"></asp:Label>&nbsp;</td>
                <td bgcolor="#ecf9ff" width="43">
                    <div align="right">
                        姓名：</div>
                </td>
                <td bgcolor="#ecf9ff" style="text-align: left" width="85">
        <asp:Label ID="lblName" runat="server"></asp:Label>&nbsp;</td>
                <td bgcolor="#ecf9ff" width="44">
                    <div align="right">
                        性别：</div>
                </td>
                <td bgcolor="#ecf9ff" style="text-align: left" width="406">
        <asp:Label ID="lblsex" runat="server"></asp:Label>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6" height="53">
                    <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Image/rule_03.gif"
                        Width="756px" /></td>
            </tr>
            <tr>
                <td height="288" class="style1">
                    <p>
                        &nbsp;</p>
                </td>
                <td colspan="5" style="text-align: left" valign="top">
        <asp:Panel ID="Panel1" runat="server" Height="138px" Width="612px">
             <br />
                &nbsp;&nbsp;&nbsp; <span class="style2">
             &nbsp;&nbsp; 真诚考试，<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 诚信做人 。<br /> 
             <br />
             <br />
             </span>
            <br />
            <br />
            <div style="text-align: center">
                <table border="0" cellpadding="0" cellspacing="0" 
                    style="width: 180px; height: 74px" align="center">
                    <tr>
                        <td style="width: 200px; text-align: center">
            <asp:CheckBox
                ID="ckbCheck" runat="server" Text="已经仔细阅读了前言" Width="180px" />
            </td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center" align="center">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="已经阅读完前言" Width="121px" /><asp:Button ID="Button6" runat="server" Text="返回" onclick="Button5_Click" /></td>
                    </tr>
                </table>
            </div>
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="89px" Visible="False" Width="603px">
            <br />
            <br />
            <br />
            <br />
            <table align="center" border="0" cellpadding="0" cellspacing="0" height="30" width="486">
                <tr>
                    <td style="text-align: center">
            <asp:Label ID="Label3" runat="server" Text="选择练习目录："></asp:Label>&nbsp;<asp:DropDownList
                ID="ddlKm" runat="server">
                
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="开始考试" />&nbsp;<asp:Button
                ID="Button3" runat="server" Text="浏览试题" onclick="Button3_Click" />&nbsp;            <asp:Button ID="Button4" runat="server" Text="我要留言" onclick="Button4_Click" />
                     &nbsp;   <asp:Button ID="Button5" runat="server" Text="返回" 
                            onclick="Button5_Click" />
            </td>
                </tr>
            </table>
            <br />
            <div style="text-align: center">
                &nbsp;
            </div>
        </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6" height="36">
                    <uc1:Fooder ID="Fooder1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
