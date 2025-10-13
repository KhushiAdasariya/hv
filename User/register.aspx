<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hv.User.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
     body {
         font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
         background: #f4f7fa;
     }

     .form-container {
         width: 500px;
         margin: 40px auto;
         padding: 25px;
         background: #fff;
         border-radius: 12px;
         box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
     }

     .form-container h2 {
         text-align: center;
         margin-bottom: 20px;
         color: #333;
     }

     table {
         width: 100%;
     }

     td {
         padding: 10px;
         font-weight: 500;
         color: #444;
     }

     .form-control {
         width: 100%;
         padding: 8px;
         border-radius: 6px;
         border: 1px solid #ccc;
         outline: none;
     }

     .form-control:focus {
         border-color: #007bff;
     }

     .btn-submit {
         background: #007bff;
         color: #fff;
         padding: 10px 18px;
         border: none;
         border-radius: 6px;
         cursor: pointer;
         transition: 0.3s;
     }

     .btn-submit:hover {
         background: #0056b3;
     }

     .validation-error {
         color: red;
         font-size: 13px;
     }
 </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="form-container">
    <h2>Register</h2>
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="txtnm" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtnm" ErrorMessage="Name is required" CssClass="validation-error"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rdbgen" InitialValue="" ErrorMessage="Please select gender" CssClass="validation-error"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile No:</td>
            <td>
                <asp:TextBox ID="txtmn" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtmn" ErrorMessage="Mobile no is required" CssClass="validation-error"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtmn" ErrorMessage="Enter valid 10 digit number" ValidationExpression="^[0-9]{10}$" CssClass="validation-error"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtunm" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtunm" ErrorMessage="Email is required" CssClass="validation-error"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtunm" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w{2,3}" CssClass="validation-error"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
    <td>Password:</td>
    <td>
        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" 
            ControlToValidate="txtpwd" ErrorMessage="Password is required" 
            CssClass="validation-error"></asp:RequiredFieldValidator>
        
        <!-- Minimum 6 characters validation -->
        <asp:RegularExpressionValidator ID="revPwd" runat="server" 
            ControlToValidate="txtpwd" 
            ValidationExpression="^.{6,}$" 
            ErrorMessage="Password must be at least 6 characters long" 
            CssClass="validation-error"></asp:RegularExpressionValidator>
    </td>
</tr>

        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpas" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtcpas" ControlToCompare="txtpwd" ErrorMessage="Passwords do not match" CssClass="validation-error"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>City:</td>
            <td>
                <asp:DropDownList ID="dblct" runat="server" CssClass="form-control">
                    <asp:ListItem Value="">-- Select City --</asp:ListItem>
                    <asp:ListItem>Rajkot</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Ahemdabad</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Jamnager</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="dblct" InitialValue="" ErrorMessage="Please select city" CssClass="validation-error"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>State:</td>
            <td>
                <asp:DropDownList ID="ddl" runat="server" CssClass="form-control">
                    <asp:ListItem Value="">-- Select State --</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddl" InitialValue="" ErrorMessage="Please select state" CssClass="validation-error"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn-submit" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
