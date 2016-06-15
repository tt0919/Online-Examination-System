<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Book_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>留言薄</title>
      <style type="text/css">
body {
 background-image: url(../Image/back.jpg);
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center"><tr><td>
        <asp:Label ID="Label1" runat="server" Text="留言簿" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    </td></tr></table>
    <table style="width: 520px; height: 116px" cellpadding="0" cellspacing="0" align="center">
                   
                    <tr>
                        <td style="width: 100px" align="right">
                            标题：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtTitle" runat="server" Width="337px"></asp:TextBox></td>
                        <td style="width: 89px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="right">
                            内容：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtInfo" runat="server" Height="147px" TextMode="MultiLine" Width="360px"></asp:TextBox></td>
                        <td style="width: 89px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInfo"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px" align="right">
                            姓名：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtLinkMan" runat="server"></asp:TextBox></td>
                            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLinkMan"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px; height: 24px;" align="right">
                            QQ：</td>
                        <td style="width: 336px; height: 24px;" align="left">
                            <asp:TextBox ID="txtTel" runat="server" onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" MaxLength="15"></asp:TextBox>
                            </td>
                        <td style="width: 89px; height: 24px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTel"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px; height: 43px">
                        </td>
                        <td style="width: 336px; height: 43px">
                        </td>
                        <td style="width: 89px; height: 43px">
                        </td>
                    </tr>
                </table>
                <table align="center"><tr><td align="center">
                 <asp:ImageButton ID="imgBtnAdd" runat="server" AlternateText="确定" Height="46px"
                    OnClick="imgBtnAdd_Click" Width="145px" ImageUrl="~/Image/queding.jpg" />
                    </td></tr></table>
    </div>
    </form>
</body>
</html>
