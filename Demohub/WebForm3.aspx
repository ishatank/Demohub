<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Demohub.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding: 20px;
        }
        form {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        div {
            margin-bottom: 15px;
        }
        label, input, .error-message {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"] {
            width: calc(100% - 10px);
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .error-message {
            color: #CC0000;
            font-size: 0.9em;
        }
        button {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <label for="nametext">Name:</label>
            <asp:TextBox ID="nametext" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be empty" ControlToValidate="nametext" CssClass="error-message"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="semtext">Sem:</label>
            <asp:TextBox ID="semtext" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Range is from 1 to 6" ControlToValidate="semtext" CssClass="error-message"></asp:RangeValidator>
        </div>
        <div>
            <label for="branchtext">Branch:</label>
            <asp:TextBox ID="branchtext" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Branch is required" ControlToValidate="branchtext" CssClass="error-message"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="passwordtext">Password:</label>
            <asp:TextBox ID="passwordtext" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="passwordtext" CssClass="error-message"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="confirmpasswordtext">Confirm Password:</label>
            <asp:TextBox ID="confirmpasswordtext" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="passwordtext" ControlToValidate="confirmpasswordtext" CssClass="error-message"></asp:CompareValidator>
        </div>
        <div>
            <label for="emailtext">Email:</label>
            <asp:TextBox ID="emailtext" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="emailtext" CssClass="error-message"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
        
    </form>
</body>
</html>
