<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentAttedenceSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            text-align:center;
            font-size:30px;
        }
        table{
            margin:auto;
            width:300px;
            border:3px solid blue;
        }
        form{
            margin-top:100px;
        }
        .link{
            text-align:center;
        }
        a:hover{
            color:green;
        }
        .Button:hover{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="7" cellspacing="7" >
                <tr>
                    <td class="auto-style2" colspan="2" style="color:deepskyblue">Login Page For <br /> student and Teacher</td>
                </tr>
                <tr>
                    <td >ROLLNUMER  (USERNAME) </td>
                    <td>
                        <asp:TextBox ID="RollTextBox" runat="server" Width="233px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RollTextBox" Display="Dynamic" ErrorMessage="Please enter Roll number" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >PASSWORD</td>
                    <td>
                        <asp:TextBox ID="PassTextBox" runat="server" Width="231px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2," >&nbsp;</td>
                    <td>
                        <asp:Button  ID="LoginButton" runat="server" Height="29px" Text="LOGIN" Width="59px" OnClick="LoginButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="link" colspan="2">
                       If Your Are New Student <a href="Registration.aspx" > Click here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
