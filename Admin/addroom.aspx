<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addroom.aspx.cs" Inherits="hv.Admin.addroom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Add Room
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            width: 50%;
            margin: 20px auto;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            background: #f9f9f9;
        }
        .form-container table td {
            padding: 8px;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-container .btn {
            background: #007bff;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Add Room</h2>
        <table>
            <tr>
                <td>Room Type:</td>
                <td>
<asp:DropDownList ID="drpRoomType" runat="server" AutoPostBack="True">
                        OnSelectedIndexChanged="drpRoomType_SelectedIndexChanged">
                        <asp:ListItem>--Select Room Type--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Room Name:</td>
                <td><asp:TextBox ID="txtRoomName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Room Description:</td>
                <td><asp:TextBox ID="txtRoomDesc" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Room Image:</td>
                <td><asp:FileUpload ID="fldim" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnAddRoom" runat="server" Text="Add Room" 
                        CssClass="btn" OnClick="btnAddRoom_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
