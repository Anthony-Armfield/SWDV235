<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SussixCalcs.contact" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sussix Creative Calculators</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/business-frontpage.css" rel="stylesheet">

    <script type="text/javascript" src="js/externalJS.js"></script>
    <script type="text/javascript" src="js/date.js"></script>
</head>
<body>

    <form id="form1" runat="server">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Sussix Creative Calculators</a>
          <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" ForeColor="White" StaticMenuItemStyle-HorizontalPadding="10px">
              <StaticHoverStyle ForeColor="#33CCFF" />
              <Items>
                  <asp:MenuItem NavigateUrl="~/default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                  <asp:MenuItem NavigateUrl="~/about.aspx" Text="About" Value="About"></asp:MenuItem>
                  <asp:MenuItem NavigateUrl="~/calcs.aspx" Text="Calculators" Value="Calculators"></asp:MenuItem>
                  <asp:MenuItem NavigateUrl="~/faq.aspx" Text="FAQ" Value="FAQ"></asp:MenuItem>
                  <asp:MenuItem NavigateUrl="~/contact.aspx" Text="Contact" Value="Contact"></asp:MenuItem>
                  <asp:MenuItem NavigateUrl="~/listemployees.aspx" Text="List Employees" Value="List Employees"></asp:MenuItem>
              </Items>

<StaticMenuItemStyle HorizontalPadding="10px"></StaticMenuItemStyle>
          </asp:Menu>
        </div>
    </nav>
    <!-- Header with Background Image -->
    <header class="meeting header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="display-3 text-center text-white mt-4">We create the maths.</h1>
          </div>
        </div>
      </div>
    </header>

    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-sm-8">
          <h2 class="mt-4">Contact Us</h2>
          <p>Fill out the form below to let us know how we are doing.</p>

            <!-- ASPNET Contact Form-->
            <div class="row">
                <div class="col-sm-12 mailing-list" id="mailing-list">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" HeaderText="* Means that the field is required." />
                    <div class="row">
                      <div class="col-sm-12">
                            <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ControlToValidate="txtEmail" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" Font-Italic="False" Text="Must be valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-sm-12">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="txtFirstName" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-12">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ControlToValidate="txtLastName" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-12">
                            <asp:Label ID="lblComment" runat="server" Text="Comment"></asp:Label>
                            <asp:TextBox ID="txtComment" runat="server" MaxLength="255" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ControlToValidate="txtComment" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-sm-4">
                            <asp:Button ID="btnContact" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="btnContact_Click" />
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                        <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
          <h2 class="mt-4">Contact Us</h2>
          <address>
            <strong>Sussix Creative Calculators</strong>
            <br>123 Anywhere Pl.
            <br>My City, YS 12345
            <br>
          </address>
          <address>
            <abbr title="Phone">P:</abbr>
            (123) 456-7890
            <br>
            <abbr title="Email">E:</abbr>
            <a href="mailto:#">name@example.com</a>
          </address>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Today's date is: <script>
          date();
        </script></p>
        <p class="m-0 text-center text-white">Copyright &copy; Sussix Creative Calculators 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/externalJS.js"></script>

    <!-- Javascript for Form alerts -->
      <script type="text/javascript">
          var sprytextfield1 = new Spry.Widget.ValidationTextField("emailTextField", "email", {hint:"Your Email", validateOn:["blur"]});
          var sprytextfield2 = new Spry.Widget.ValidationTextField("firstNameTextField", "none", {hint:"Your First Name", validateOn:["blur"]});
          var sprytextfield3 = new Spry.Widget.ValidationTextField("lastNameTextField", "none", {hint:"Your Last Name", validateOn:["blur"]});
          var sprytextarea1 = new Spry.Widget.ValidationTextarea("messageTextArea", {minChars:1, maxChars:255, counterType:"chars_remaining", counterId:"countmessageTextArea", validateOn:["blur"], hint:"Your Message"});
      </script>
        </form>
  </body>

</html>

