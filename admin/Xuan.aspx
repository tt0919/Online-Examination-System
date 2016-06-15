<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Xuan.aspx.cs" Inherits="admin_Xuan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加试题</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" text-align:center">
    <fieldset style="width: 454px; height: 335px">
            <legend class="mailTitle">添加试题</legend>&nbsp; &nbsp; &nbsp;&nbsp;<br />
            <table>
              <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="选择" onclick="Button1_Click" /><br/><br/>
                    <asp:Button ID="Button2" runat="server" Text="判断" onclick="Button2_Click" /><br/>
                </td>
              </tr>
            </table>
        </fieldset>
    </div>
    </form>
</body>
</html>
