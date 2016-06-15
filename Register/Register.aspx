<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册</title>
      <style type="text/css">
body {
 background-image: url(../Image/back.jpg);
}
          .style1
          {
              height: 22px;
          }
      </style>

<script language="javascript" type="text/javascript"> 
function logout()
{ 
window.location.href="note.aspx" ;
} 
</script>

</head>
<body style="margin:0;border:0" class="Body">
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
		<ContentTemplate>
			<table class="Table" cellpadding="2" cellspacing="0" border="1" bordercolor="#daeeee">
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" class="style1"><font color="red"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以下内容是必填内容：</font><asp:Label ID="Label2" 
                            runat="server" ForeColor="Red" Text="恭喜，注册成功！"></asp:Label>
                        &nbsp;</td>
				</tr>
				<tr>
					<td colspan="4" width="80%"></td>
				</tr>
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						用户姓名:</td>
					<td valign="middle"><asp:TextBox ID="tbUserName" CssClass="TextBox" runat="server" SkinID="tbSkin" MaxLength="50" Width="150px"></asp:TextBox><asp:RequiredFieldValidator ID="rfUN" runat="server" ControlToValidate="tbUserName"
							ErrorMessage="不能为空。" Display="Dynamic"></asp:RequiredFieldValidator>
						<br />
						用户名称即为登录名称，整个网站唯一；一旦注册之后，不能更改。
						<br />
						用户名称最大长度为32。请<font color="red">使用中文名称</font>，谢谢！
					</td>
				</tr>
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						用户密码:</td>
					<td valign="middle"><asp:TextBox ID="tbPassword" CssClass="TextBox" runat="server" SkinID="tbSkin" MaxLength="255" Width="150px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="rfPwd" runat="server" ControlToValidate="tbPassword"
							ErrorMessage="不能为空。" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="rePwd" runat="server" ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="密码最小长度为6。" ValidationExpression="\S{6,}"></asp:RegularExpressionValidator>
						<br />
						密码长度至少为6，且至少包含一个非字母字符。
					</td>
				</tr>
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						确认密码:</td>
					<td valign="middle"><asp:TextBox ID="tbPasswordStr" CssClass="TextBox" runat="server" SkinID="tbSkin" MaxLength="255" Width="150px" TextMode="Password"></asp:TextBox>
						<asp:CompareValidator ID="cvPwd" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbPasswordStr"
							Display="Dynamic" ErrorMessage="两次输入的密码不相同！"></asp:CompareValidator></td>
				</tr>
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						学生证号:</td>
					<td valign="middle"><asp:TextBox ID="tbEmail" CssClass="TextBox" runat="server" 
                            SkinID="tbSkin" MaxLength="255" Width="149px" 
                            onkeyup="value=value.replace(/[^\d]/g,'')" 
                            onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"></asp:TextBox><asp:RequiredFieldValidator ID="rfEmail" runat="server" ControlToValidate="tbEmail"
							ErrorMessage="不能为空。" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
				</tr>	
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						性别:</td>
					<td valign="middle">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList>
						</td>
				</tr>
				<tr>
					<td width="150" height="30" valign="middle" class="LeftTD" align="right">
						<asp:Label ID="Label1" runat="server" Width="150px">&nbsp;</asp:Label></td>
					<td valign="middle" width="100%">
						&nbsp;&nbsp;&nbsp;
						<asp:Button ID="btnAddAndReturn" runat="server" CssClass="Button" Text="保存" 
                            OnClick="btnAddAndReturn_Click" SkinID="btnSkin" style="height: 21px" />&nbsp;&nbsp;&nbsp;
						<asp:Button ID="Button1" runat="server" Text="返回"  OnClientClick="return logout()" />
                    </td>
				</tr>
			</table>
		</ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
