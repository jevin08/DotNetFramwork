<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentAttedenceSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        form{
            margin-top:60px;
        }
        .auto-style1 {
            width: 400px;
            margin:auto;
            border:ridge 2px blue ;
        }
        .auto-style3 {
            text-align:center;
            height: 28px;
        }
        a{
            text-align:center;
        }
        a:hover{
            color:green;
        }
        button:hover{
            background-color:aqua;
        }
        .center{
            text-align: center;
        }

    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <table cellpadding="5" cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2"> <h2>SignUP Form</h2></td>
                </tr>
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td>
                        <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name</td>
                    <td>
                        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Enter a Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CurrentSem</td>
                    <td>
                        <asp:TextBox ID="CurrentSemTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Your Current Sem" ForeColor="Red" SetFocusOnError="True" ControlToValidate="CurrentSemTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">RollNumber</td>
                    <td>
                        <asp:TextBox ID="RollNumberTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Your Roll Number" ForeColor="Red" SetFocusOnError="True" ControlToValidate="RollNumberTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PassWord</td>
                    <td>
                        <asp:TextBox ID="PassWordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter Your Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PassWordTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PassWordTextBox" Display="Dynamic" ErrorMessage="Please Enter a strong password with Uppercase,Lowercase,Number, Character  and at least 8 digit   " ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&amp;*-]).{8,}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassWordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="Password is not Identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:Button ID="Button1" runat="server" Height="29px" Text="SignUp" Width="66px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td  colspan="2" class="center">
                        <a href="Login.aspx" style="text-align:center"> Go To Login Form </a>
                    </td>
                </tr>
            </table>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#999999" Font-Size="Larger" ForeColor="Red" />



        </div>
    </form>
</body>
</html>
