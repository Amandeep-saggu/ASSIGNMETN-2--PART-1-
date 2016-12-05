<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeTrackerApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-offset-1 col-md-6">
        
        <h1>Welcome Back To Time Tracker</h1>
        <h3>Login To TimeTracker</h3>
        <div class="form">
       

          <div class="form-group">
            <label for="exampleInputEmail1">Enter Username</label>
            
              <asp:TextBox ID="Username" CssClass="form-control"  runat="server"></asp:TextBox>
          </div>

          <div class="form-group">
            <label for="Password">Enter Password</label>
            
              <asp:TextBox ID="Password"  CssClass="form-control"  TextMode="Password" runat="server"></asp:TextBox>
          </div>

            <div class="form-group">
            
            
             <asp:Button ID="Button2" runat="server"  CssClass="btn btn-primary"  OnClick="Button2_Click" Text="Button" />
          </div>
            <div class="form-group">
            <label for="Message" id="Message" runat="server"></label>
            
             
          </div>
        </div>
    </div>
</asp:Content>
