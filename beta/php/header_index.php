<?php
	function do_unirent_header($title) {
	// print UniRent header
?>

<html lang="en">
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta property="og:title" content="UniRent" />
  <meta property="og:description" content="The student's renting marketplace" />
  <meta property="og:url" content="http://unirent.online" />
  <meta property="og:image" content="img/logo_whatsapp.png" />
  <title><?php echo $title; ?></title>

  <!-- PLUGINS CSS STYLE -->
  <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="plugins/listtyicons/style.css" rel="stylesheet">
  <link href="plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">
  <link href="plugins/datepicker/datepicker.min.css" rel="stylesheet">
  <link href="plugins/selectbox/select_option1.css" rel="stylesheet">
  <link href="plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
  <link href="plugins/fancybox/jquery.fancybox.min.css" rel="stylesheet"/>
  <link href="plugins/isotope/isotope.min.css" rel="stylesheet">
  <link href="plugins/map/css/map.css" rel="stylesheet">
  <link href="plugins/rateyo/jquery.rateyo.min.css" rel="stylesheet">
  <link href="plugins/animate/animate.css" rel="stylesheet">

  <!-- GOOGLE FONT -->
  <link href="https://fonts.googleapis.com/css?family=Muli:200,300,400,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet">

  <link rel="stylesheet" href="css/default.css" id="option_color">

  <!-- FAVICON -->
  <link href="img/favicon.png" rel="shortcut icon">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body id="body" class="body-wrapper boxed-menu" >
  <!-- <div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div> -->
  <!-- Preloader -->
  <div id="preloader" class="smooth-loader-wrapper">
    <div class="smooth-loader">
      <div class="loader1">
      <div class="loader-target">
        <div class="loader-target-main"></div>
        <div class="loader-target-inner"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="main-wrapper">
    <!-- HEADER -->
    <header id="pageTop" class="header">

      <!-- TOP INFO BAR -->

      <div class="nav-wrapper">
        <!-- NAVBAR -->
        <nav id="menuBar" class="navbar navbar-default transparent-navbar " role="navigation">
          <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              
              <a class="navbar-brand" href="index.php">
                <img src="img/unirent.png" alt="LOGO">
              </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <ul class="nav navbar-nav navbar-right">
                </li>
                <li class=" dropdown singleDrop">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Help <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                  <ul class="dropdown-menu dropdown-menu-left">
                      <li><a href="contact-us.php">Contact Us</a></li>
                      <li><a href="terms-of-services.php">Terms and Conditions</a></li>
                      <li><a href="how-it-works.php">How It Works</a></li>
                  </ul>
                </li>
                <li class=""><a href="login.php">login </a></li>
              </ul>
            </div>
            <a class="btn btn-default navbar-btn" href="sign-up.php"> + <span>Sign Up</span></a>
          </div>
        </nav>
      </div>
    </header>

<?php
	};
?>