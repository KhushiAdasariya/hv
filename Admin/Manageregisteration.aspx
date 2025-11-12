<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manageregisteration.aspx.cs" Inherits="hv.Admin.Manageregisteration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #f3f6fa;
            font-family: 'Poppins', sans-serif;
        }

        h2 {
            font-size: 30px;
            color: #2c3e50;
            margin-top: 25px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 600;
        }

        .grid-container {
            width: 90%;
            margin: 30px auto;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.08);
            padding: 25px 30px;
            transition: all 0.3s ease-in-out;
        }

        .grid-container:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 28px rgba(0, 0, 0, 0.12);
        }

        .custom-gridview {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
            font-size: 15px;
        }

        .custom-gridview th {
            background: linear-gradient(90deg, #34495e, #2c3e50);
            color: #fff;
            padding: 14px 10px;
            text-transform: uppercase;
            letter-spacing: 0.7px;
            border-bottom: 3px solid #1abc9c;
        }

        .custom-gridview td {
            padding: 12px;
            color: #2c3e50;
            border-bottom: 1px solid #ddd;
        }

        .custom-gridview tr:nth-child(even) {
            background: #f9fbfc;
        }

        .custom-gridview tr:hover {
            background: #ecf9f6;
            transition: all 0.3s ease-in-out;
        }

        .custom-gridview .action-button {
            background: linear-gradient(90deg, #e74c3c, #c0392b);
            color: #fff;
            border: none;
            padding: 7px 15px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.3s ease-in-out;
        }

        .custom-gridview .action-button:hover {
            background: linear-gradient(90deg, #c0392b, #96281b);
            transform: scale(1.05);
        }

        .card-header {
            font-size: 18px;
            color: #16a085;
            font-weight: 500;
            margin-bottom: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Registered Users</h2>
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview"
                AutoGenerateColumns="False" AllowPaging="true" PageSize="10"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnRowCommand="GridView1_RowCommand">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="true" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Mobile_no" HeaderText="Mobile No" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" CssClass="action-button" Text="Delete"
                                CommandName="DeleteUser" CommandArgument='<%# Eval("Id") %>'
                                OnClientClick="return confirm('Are you sure you want to delete this user?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </center>
</asp:Content>
