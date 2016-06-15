<%@ Page Language="C#" AutoEventWireup="true" CodeFile="note.aspx.cs" Inherits="Register_note" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    
    <script type="text/javascript">
  function $(id)
  {
  return document.getElementById(id);
  }
    
  var remain=5;
  function init()
  {
  $("btnok").innerHTML="同意("+(remain--)+"秒)";
  if(remain>0)
  {
  window.setTimeout(init,1000);
  }
  else
  {
  $("btnok").disabled=false;
  $("btnok").innerHTML="同意";
  }
  }
  </script>
  <style type="text/css">
body {
 background-image: url(../Image/back.jpg);
}
      .style1
      {
          font-size: x-large;
          font-family: 华文彩云;
          text-align: left;
          width: 741px;
          height: 63px;
      }
  </style>
</head>
<body onload="init()">
    <form id="form1" runat="server">
    <div>
    
    <table align="center">
     <tr>
                        <td colspan="3" 
                            style="color: #FF0000; background-image: url('../../Image/kemu_03.gif');" 
                            valign="top" class="style1">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            用户注册须知</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                            ..........................................................................................................................................</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; height: 41px" valign="top">
                            <table border="0" style="width: 60%">
                                <tr>
                                    <td style="width: 93px" height="30">
                                        <asp:Label ID="Label2" runat="server" ForeColor="RoyalBlue" Text="1.本网站享有所有条款的解释权及修改权。"
                                            Width="350px" Font-Bold="True" Font-Size="Medium" Height="34px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px" height="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 93px" height="30">
                                        <asp:Label ID="Label3" runat="server" ForeColor="RoyalBlue" Text="2.用户须遵守互联网安全信息管理条例对违反规定而产生的一切后果自负。"
                                            Width="600px" Font-Bold="True" Height="35px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px" height="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 93px" height="30">
                                        <asp:Label ID="Label5" runat="server" ForeColor="RoyalBlue" Text="3.所有注册用户，应妥善保管用户名称及密码。"
                                            Width="394px" Font-Bold="True" Height="34px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px" height="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 93px"  height="30">
                                        <asp:Label ID="Label6" runat="server" ForeColor="RoyalBlue" Text="4.用户有义务对我们的服务做出监督并提供合理化建议。"
                                            Width="462px" Font-Bold="True" Height="34px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td  style="width: 93px" height="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="width: 93px" height="30">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 93px; height: 11px">
                                    </td>
                                </tr>
                            </table>
                            &nbsp;<br />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 350px;" valign="top" height="30" align ="center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button id="btnok" disabled="disabled" style="width: 90px; height: 25px; font-size: large;"
onclick="javascript:window.location.href='Register.aspx'">同意</button>
                                <%--<button id="btnok" disabled="disabled" style="width: 150px; height: 40px; font-size: large;" onclick="javascript:window.location.href='Register.aspx'">同意</button>--%>
                            &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; 
                            <button id="btncancel" style="width: 90px; height: 25px; font-size: large" onclick="javascript:window.location.href='../Login.aspx'">不同意</button>
                           <%-- <button id="btncancel" style="width: 50px; height: 20px;  onclick="javascript:window.history.back()">不同意</button>--%>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    </table>
    </div>
    </form>
</body>
</html>
