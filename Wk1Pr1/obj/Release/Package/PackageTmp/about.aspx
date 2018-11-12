<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="SussixCalcs.about" %>

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
    <header class="city header">
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
        <div class="col-sm-12">
          <h2 class="mt-4 text-center">About Us</h2>
          <p>We started as a small group of mathematical wonders who set out to make the world a better place by helping our fellow students with solving their mathematical problems. We identified there was a need for digital calculators when we went searching for a calculator to solve our own problems. Finding no solution, it really surprised us that calculators could not be found. It turns out there is a much larger need than originally anticipated and Sussix Creative Calculators was born!</p>
        </div>
        <div class="col-sm-6">
          <h2 class="mt-4">Do you need a calculator?</h2>
          <p>We at Sussix Creative Calculators, are specialists in the calculator industry. If you need one, we create it for you!</p>
          <p>Check below to check out our calculators!</p>
          <p>
              <asp:Button ID="btnCalcs" runat="server" Text="Calculators" CssClass="btn btn-primary btn-lg" OnClick="btnCalcs_Click" />
          </p>
        </div>
        <div class="col-sm-6">
          <h2 class="mt-4">Need something else?</h2>
          <p>We are not limited to just calculators here as Sussix Creative Calculators. If you need specialized software, let us know.</p>
          <p>Click the button below to contact us today!</p>
            <asp:Button ID="btnContact" runat="server" Text="Contact Us" CssClass="btn btn-primary btn-lg" OnClick="btnContact_Click" />
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <h2 class="mt-4">Sign up for our mailing list.</h2>
          <p>Want to know what we are currently working on at Sussix Creative Calculators? Sign up for our monthly newsletter and you will get the skinny on projects like interactive games, fancy web development techniques, and Arduino/Raspberry Pi projects. We might even throw in some DIY stuff for those tinkerers at heart!</p>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 mailing-list" id="mailing-list">
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
                <div class="col-sm-4">
                    <asp:Button ID="btnMailingList" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="btnMailingList_Click" />
                </div>
                <div class="col-sm-12">
                    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                    <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>
                </div>
            </div>
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
        var sprytextfield1 = new Spry.Widget.ValidationTextField("emailTextField", "email", {hint:"Your Email Here", validateOn:["blur"]});
        var sprytextfield3 = new Spry.Widget.ValidationTextField("nameTextField", "none", {hint:"Your Name Here", validateOn:["blur"]});


    </script>
        
    </form>
  </body>

</html>