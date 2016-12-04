<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TimeTrackerApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-offset-4 col-md-4">
        
        <div class="form">
       

          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            
              <asp:TextBox ID="Username" runat="server"></asp:TextBox>
          </div>

          <div class="form-group">
            <label for="Password">Password</label>
            
              <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
          </div>

            <div class="form-group">
            
            
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
          </div>
        </div>
    </div>
</asp:Content>
