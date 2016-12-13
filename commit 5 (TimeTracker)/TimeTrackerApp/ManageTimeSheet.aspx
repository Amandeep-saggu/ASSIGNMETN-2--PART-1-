<%@ Page Title="" Language="C#" MasterPageFile="~/Website.Master" AutoEventWireup="true" CodeBehind="ManageTimeSheet.aspx.cs" Inherits="TimeTrackerApp.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Projects ( Add / Update / Delete Projects )</h1>
    <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="EntryID"
        OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
        <Columns>
            <asp:TemplateField HeaderText="Project ID" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblProject" runat="server" Text='<%# Eval("ProjectID") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtprojectid" runat="server" Text='<%# Eval("ProjectID") %>'></asp:TextBox>
                    
                </EditItemTemplate>
            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="StartDate" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblStartDate" runat="server" Text='<%# Eval("StartDate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtStartDate" runat="server" Text='<%# Eval("StartDate") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="StartTime" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblStartTime" runat="server" Text='<%# Eval("StartTime") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtStartTime" runat="server" Text='<%# Eval("StartTime") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="EndDate" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblEndDate" runat="server" Text='<%# Eval("EndDate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEndDate" runat="server" Text='<%# Eval("EndDate") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblEndTime" runat="server" Text='<%# Eval("EndTime") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEndTime" runat="server" Text='<%# Eval("EndTime") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Link"  ControlStyle-CssClass="btn btn-primary"  ShowEditButton="true" ShowDeleteButton="true"
                ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    <table class=" table table-responsive" border="1" Cellpadding="0" Cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">
                ProjectID:<br />
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                <%--<asp:TextBox ID="ProjectID" CssClass="form-control" runat="server" Width="140" />--%>

            </td>
            <td style="width: 150px">
                
                StartDate:<br />
                <asp:TextBox ID="StartDate" CssClass="form-control" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                StartTime:<br />
                <asp:TextBox ID="StartTime" CssClass="form-control" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                EndDate:<br />
                <asp:TextBox ID="EndDate" CssClass="form-control" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                EndTime:<br />
                <asp:TextBox ID="EndTime" CssClass="form-control" runat="server" Width="140" />
            </td>
           
            <td style="width: 100px">
                <asp:Button ID="btnAdd" CssClass="btn btn-primary"  runat="server" Text="Add" OnClick="Insert" />
            </td>
        </tr>
    </table>
</asp:Content>
