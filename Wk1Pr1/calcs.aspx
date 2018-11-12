<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calcs.aspx.cs" Inherits="SussixCalcs.calcs" %>

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
    <header class="coffee header">
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
        <div class="col-sm-6">
          <h5 class="mt-4">Calculate your Miles Per Gallon (MPG)</h5>
          <p>
            <a class="btn btn-primary" onClick="mpgCalc()">Calculate MPG &raquo;</a>
          </p>
          <p id="mpgResult"> </p>
        </div>
        <div class="col-sm-6">
          <h5 class="mt-4">Calculate your average test scores</h5>
          <p>
            <a class="btn btn-primary " onClick="testScores()">Calculate Scores &raquo;</a>
          </p>
          <p id="testScoreResult"> </p>
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
        </form>
  </body>

</html>
