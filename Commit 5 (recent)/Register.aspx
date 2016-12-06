<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TimeTrackerApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     <div class="col-md-offset-1 col-md-6">
        
        <h1>Welcome To Time Tracker. Join Us!</h1>
        <h3>Login To TimeTracker</h3>

        <div class="form">

           <div class="form-group">
            <label for="exampleInputEmail1">Full Name</label>
               <asp:TextBox ID="Fullname" CssClass="form-control"  runat="server"></asp:TextBox>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
              <asp:TextBox ID="Username" CssClass="form-control"  runat="server"></asp:TextBox>
          </div>

          <div class="form-group">
            <label for="Password">Password</label>
              <asp:TextBox ID="Password" CssClass="form-control"  TextMode="Password" runat="server"></asp:TextBox>
          </div>

         <div class="form-group">
             <asp:Button ID="Button2" CssClass="form-control"  runat="server" OnClick="Button2_Click" Text="Register" />
          </div>

          <div class="form-group">
                <label for="Message" id="Message" runat="server"></label>
          </div>

        </div>
    </div>
</asp:Content>
