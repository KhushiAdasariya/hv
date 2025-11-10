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
   <center>
<h2>Add New Room</h2>

<!-- Room Form -->
<div class="form-group">
    <label>Room Type:</label>
    <asp:TextBox ID="txtRoomType" runat="server" placeholder="Enter room type" CssClass="input-text"></asp:TextBox>
</div>

<div class="form-group">
    <label>Room Number:</label>
    <asp:TextBox ID="txtRoomNumber" runat="server" placeholder="Enter room number" CssClass="input-text"></asp:TextBox>
</div>

<div class="form-group">
    <label>Description:</label>
    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Rows="3" runat="server" placeholder="Enter description" CssClass="input-text"></asp:TextBox>
</div>

<div class="form-group">
    <label>Price (₹):</label>
    <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" placeholder="Enter price" CssClass="input-text"></asp:TextBox>
</div>

<div class="form-group">
    <label>Capacity:</label>
    <asp:TextBox ID="txtCapacity" runat="server" TextMode="Number" placeholder="Enter capacity" CssClass="input-text"></asp:TextBox>
</div>

<div class="form-group">
    <label>Status:</label>
    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="input-text">
        <asp:ListItem Text="Available" Value="Available" />
        <asp:ListItem Text="Booked" Value="Booked" />
        <asp:ListItem Text="Maintenance" Value="Maintenance" />
    </asp:DropDownList>
</div>

<div class="form-group">
    <label>Image:</label>
    <asp:FileUpload ID="fldimg" runat="server" CssClass="input-text" />
</div>

<asp:Button ID="btnSave" runat="server" Text="Save Room" CssClass="btn" OnClick="btnSave_Click" />
<asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>

<!-- Room List Table -->
<div class="table-container" style="margin-top: 40px;">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="data-table"
        OnRowCommand="GridView1_RowCommand">

        <Columns>

            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Room Type">
                <ItemTemplate>
                    <asp:Label ID="lblRoomType" runat="server" Text='<%# Eval("RoomType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Room No">
                <ItemTemplate>
                    <asp:Label ID="lblRoomNo" runat="server" Text='<%# Eval("RoomNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Price (₹)">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Capacity">
                <ItemTemplate>
                    <asp:Label ID="lblCapacity" runat="server" Text='<%# Eval("Capacity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <%-- Edit Button --%>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkEdit" runat="server" 
                        Text="Edit" 
                        CommandName="cmd_edt"
                        CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn btn-sm btn-primary">
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <%-- Delete Button --%>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDelete" runat="server" 
                        Text="Delete" 
                        CommandName="cmd_dlt"
                        CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn btn-sm btn-danger"
                        OnClientClick="return confirm('Are you sure you want to delete this room?');">
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</div>
</center>

</asp:Content>
