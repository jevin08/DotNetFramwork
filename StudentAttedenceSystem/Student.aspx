<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentAttedenceSystem.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Page</title>
    <style >
        .PlaceHolder1{
            
           margin:auto;
           
           width:400px;
        }
        .Label1{
            margin:auto;
            width:250px;
            color:green;
            font-size:25px;
        }
        .Label2{
            margin:auto;
            width:250px;
            color:green;
            font-size:25px;
        }
        .Label3{
            margin:auto;
            width:250px;
            color:green;
            font-size:25px;
        }
        .button1{
/*            margin:auto;
            width:30px;
            margin-top:20px;*/
        }
/*        .auto-style1 {
            margin-left: 0px;
        }*/
        .auto-style1 {
            margin-left: 105px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="Label1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
               
        <br />

        <div class="Label2">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        
               

        
        <br />
        <div class="Label3">
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </div>
        
        <br />
        <div class="PlaceHolder1">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
        <br />
        <br />

        <div class="button1">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button1" runat="server" Font-Size="Larger" ForeColor="Red" OnClick="Button1_Click" Text="Logout" CssClass="auto-style1" Height="37px" Width="105px"   />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Size="Larger" ForeColor="Red" OnClick="Button2_Click" Text="Delete" CssClass="auto-style2" Height="37px" Width="115px" />

        </div>
    </form>
</body>
</html>
