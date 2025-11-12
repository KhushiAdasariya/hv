<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addroom.aspx.cs" Inherits="hv.Admin.addroom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Manage Rooms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* FORM CONTAINER */
        .form-section {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin: 20px auto;
            border-top: 5px solid #2c3e50;
        }

        .form-section h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 700;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            font-weight: 600;
            color: #333;
            margin-bottom: 6px;
        }

        .input-text {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        .btn {
            background: linear-gradient(90deg, #2c3e50, #1a252f);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background: #a6d94b;
            color: #1a252f;
            transform: scale(1.03);
        }

        /* TABLE STYLING */
        .table-container {
            width: 90%;
            margin: 40px auto;
        }

        .data-table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.08);
        }

        .data-table th {
            background: linear-gradient(90deg, #2c3e50, #1a252f);
            color: #fff;
            padding: 12px;
            text-align: center;
            font-size: 15px;
        }

        .data-table td {
            padding: 10px;
            text-align: center;
            font-size: 14px;
            color: #333;
            border-bottom: 1px solid #eee;
        }

        .data-table tr:hover {
            background: #f5f8fc;
        }

        .btn-primary {
            background: #1a252f;
            color: #fff;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background: #a6d94b;
            color: #1a252f;
        }

        .btn-danger {
            background: #dc3545;
            color: #fff;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-danger:hover {
            background: #b21f2d;
        }

        @media (max-width: 768px) {
            .form-section {
                width: 90%;
                padding: 20px;
            }
            .data-table {
                font-size: 13px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-section">
        <h2>Add New Room</h2>

        <div class="form-group">
            <label>Room Type:</label>
            <asp:TextBox ID="txtRoomType" runat="server" placeholder="Enter room type" CssClass="input-text"></asp:TextBox>
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
            <label>Image:</label>
            <asp:FileUpload ID="fldimg" runat="server" CssClass="input-text" />
        </div>

        <div style="text-align: center;">
            <asp:Button ID="btnSave" runat="server" Text="Save Room" CssClass="btn" OnClick="btnSave_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Style="margin-left: 15px;"></asp:Label>
        </div>
    </div>

    <div class="table-container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="data-table" OnRowCommand="GridView1_RowCommand">
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

                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
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

                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="90px" Width="90px" ImageUrl='<%# Eval("Image") %>' Style="border-radius:6px;box-shadow:0 0 6px rgba(0,0,0,0.2);" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="cmd_edt"
                            CommandArgument='<%# Eval("Id") %>' CssClass="btn-primary"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="cmd_dlt"
                            CommandArgument='<%# Eval("Id") %>'
                            CssClass="btn-danger"
                            OnClientClick="return confirm('Are you sure you want to delete this room?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
