<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hv.User.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 600px;
            margin: 60px auto;
            padding: 40px 35px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
            transition: all 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15);
        }

        .form-container h2 {
            text-align: center;
            font-size: 30px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 22px;
        }

        .form-group label {
            font-weight: 500;
            color: #2c3e50;
            margin-bottom: 8px;
        }

        .form-control {
            padding: 14px 16px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #7c8b38;
            box-shadow: 0 0 8px rgba(124, 139, 56, 0.25);
            outline: none;
        }

        .btn-submit {
            width: 100%;
            padding: 16px 0;
            background: #7c8b38;
            color: #fff;
            font-size: 18px;
            font-weight: 600;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background: #5f6e2b;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(95, 110, 43, 0.3);
        }

        .validation-error {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 5px;
        }

        .radio-group {
            display: flex;
            gap: 20px;
        }

        .section-title {
            font-size: 18px;
            font-weight: 600;
            color: #7c8b38;
            margin: 25px 0 15px 0;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }

        @media (max-width: 480px) {
            .form-container {
                margin: 30px 20px;
                padding: 30px 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Register</h2>

        <div class="section-title">Personal Details</div>

        <div class="form-group">
            <label>Name</label>
            <asp:TextBox ID="txtnm" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtnm" ErrorMessage="Name is required" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="radio-group">
                <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rdbgen" InitialValue="" ErrorMessage="Please select gender" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>Mobile Number</label>
            <asp:TextBox ID="txtmn" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtmn" ErrorMessage="Mobile no is required" CssClass="validation-error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtmn" ErrorMessage="Enter valid 10 digit number" ValidationExpression="^[0-9]{10}$" CssClass="validation-error"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:TextBox ID="txtunm" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtunm" ErrorMessage="Email is required" CssClass="validation-error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtunm" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w{2,3}" CssClass="validation-error"></asp:RegularExpressionValidator>
        </div>

        <div class="section-title">Account Details</div>

        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtpwd" ErrorMessage="Password is required" CssClass="validation-error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPwd" runat="server" ControlToValidate="txtpwd" ValidationExpression="^.{6,}$" ErrorMessage="Password must be at least 6 characters long" CssClass="validation-error"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label>Confirm Password</label>
            <asp:TextBox ID="txtcpas" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtcpas" ControlToCompare="txtpwd" ErrorMessage="Passwords do not match" CssClass="validation-error"></asp:CompareValidator>
        </div>

        <div class="section-title">Location</div>

        <div class="form-group">
            <label>City</label>
            <asp:DropDownList ID="dblct" runat="server" CssClass="form-control">
                <asp:ListItem Value="">-- Select City --</asp:ListItem>
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Jamnagar</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="dblct" InitialValue="" ErrorMessage="Please select city" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>State</label>
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
        </div>

        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn-submit" OnClick="Button1_Click" />
    </div>
</asp:Content>
