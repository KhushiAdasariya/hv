<%@ Page Title="Contact Reports" Language="C#" 
    MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" 
    CodeBehind="Reports.aspx.cs" 
    Inherits="hv.Admin.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Contact Messages Report
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
            font-family: 'Segoe UI', sans-serif;
            font-weight: 600;
            color: #2b2b2b;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            background: white;
            font-family: 'Segoe UI', sans-serif;
        }

        .table th {
            background-color: #2c3e50;
            color: white;
            padding: 12px;
            font-size: 14px;
            text-align: left;
        }

        .table td {
            padding: 10px;
            font-size: 14px;
            color: #333;
            border-bottom: 1px solid #e0e0e0;
        }

        .table tr:hover td {
            background-color: #f6f9fc;
        }

        .table a {
            padding: 6px 12px;
            background-color: #3498db;
            color: white !important;
            text-decoration: none;
            border-radius: 4px;
        }

        .table a:hover {
            background-color: #217dbb;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="margin-bottom:15px;">Contact Messages</h2>

    <asp:GridView ID="GridView1" 
                  runat="server" 
                  AutoGenerateColumns="False"
                  AllowPaging="True" 
                  PageSize="10"
                  OnPageIndexChanging="GridView1_PageIndexChanging"
                  OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                  CssClass="table">

        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
            <asp:CommandField ShowSelectButton="True" SelectText="View" />
        </Columns>

    </asp:GridView>

</asp:Content>
