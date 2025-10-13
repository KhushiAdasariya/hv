<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manageregisteration.aspx.cs" Inherits="hv.Admin.Manageregisteration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-container {
            width: 95%;
            margin: 30px auto;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        }

        .custom-gridview {
            width: 100%;
            border-collapse: collapse;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 15px;
        }

        .custom-gridview th {
            background: #2c3e50;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 14px;
        }

        .custom-gridview td {
            padding: 12px;
            text-align: center;
            color: #333;
        }

        .custom-gridview tr:nth-child(even) {
            background: #f8f9fa;
        }

        .custom-gridview tr:hover {
            background: #eaf2f8;
            transition: 0.3s ease-in-out;
        }

        .custom-gridview .select-button {
            background: #2c3e50;
            color: white;
            border: none;
            padding: 6px 14px;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .custom-gridview .select-button:hover {
            background: #1a252f;
        }

        h2 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
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
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Mobile_no" HeaderText="Mobile No" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />

                    
                </Columns>
            </asp:GridView>
        </div>
    </center>
</asp:Content>
