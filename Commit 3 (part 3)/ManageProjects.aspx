<%@ Page Title="" Language="C#" MasterPageFile="~/Website.Master" AutoEventWireup="true" CodeBehind="ManageProjects.aspx.cs" Inherits="TimeTrackerApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Projects ( Add / Update / Delete Projects )</h1>
    <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="ProjectId"
        OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
        <Columns>
            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtTitle" runat="server" Text='<%# Eval("Title") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
            <asp:CommandField ButtonType="Link"  ControlStyle-CssClass="btn btn-primary"  ShowEditButton="true" ShowDeleteButton="true"
                ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    <table class=" table table-responsive" border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">
                Title:<br />
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server" Width="140" />
            </td>
           
            <td style="width: 100px">
                <asp:Button ID="btnAdd" CssClass="btn btn-primary"  runat="server" Text="Add" OnClick="Insert" />
            </td>
        </tr>
    </table>
</asp:Content>
