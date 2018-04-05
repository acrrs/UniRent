<!DOCTYPE html>
<html lang="en">
<head>
  <title>UniRent</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta property="og:title" content="UniRent" />
  <meta property="og:description" content="The student's renting marketplace" />
  <meta property="og:url" content="http://unirent.online" />
  <meta property="og:image" content="images/logo_whatsapp.png" />
<!--===============================================================================================-->  
  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
  
  <div class="bg-img1 size1 flex-w flex-c-m p-t-55 p-b-55 p-l-15 p-r-15" style="background-image: url('images/soft_wallpaper.png');">
    <div class="wsize1 bor1 bg1 p-t-40 p-b-45 p-l-15 p-r-15 respon1">
      <div class="wrappic1">
        <img src="images/logo_2.png" alt="LOGO" height="180" width="400">
      </div>

      <p class="txt-center m1-txt1 p-b-38">
        <img src="images/us_underconstruction.png" alt="logo" title="logo" height="350" width="600"/>
      </p>

      <p class="txt-center m1-txt1 p-b-38">
        Our website is under construction!
      </p>

      <div class="wsize2 flex-w flex-c hsize1 cd100">
        <div class="flex-col-c-m size2 how-countdown">
          <span class="l1-txt1 p-b-9 days">35</span>
          <span class="s1-txt1">Days</span>
        </div>

        <div class="flex-col-c-m size2 how-countdown">
          <span class="l1-txt1 p-b-9 hours">17</span>
          <span class="s1-txt1">Hours</span>
        </div>

        <div class="flex-col-c-m size2 how-countdown">
          <span class="l1-txt1 p-b-9 minutes">50</span>
          <span class="s1-txt1">Minutes</span>
        </div>

        <div class="flex-col-c-m size2 how-countdown">
          <span class="l1-txt1 p-b-9 seconds">39</span>
          <span class="s1-txt1">Seconds</span>
        </div>
      </div>

      <form class="flex-w flex-c-m contact100-form validate-form">
        <div class="wrap-input100 validate-input where1" data-validate = "Email is required: ex@abc.xyz">
          <input class="s1-txt2 placeholder0 input100" type="text" name=" email" placeholder="Your Email">
          <span class="focus-input100"></span>
        </div>

        
        <button class="flex-c-m s1-txt3 size3 how-btn trans-04 where1">
          Get Notified
        </button>
        
      </form>

      <p class="s1-txt4 txt-center p-t-10">
        I promise to <span class="bor2">never</span> spam
      </p>
      
    </div>
  </div>

<!--===============================================================================================-->  
  <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/bootstrap/js/popper.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/countdowntime/moment.min.js"></script>
  <script src="vendor/countdowntime/moment-timezone.min.js"></script>
  <script src="vendor/countdowntime/moment-timezone-with-data.min.js"></script>
  <script src="vendor/countdowntime/countdowntime.js"></script>
  <script>
    $('.cd100').countdown100({
      /*Set Endtime here*/
      /*Endtime must be > current time*/
      endtimeYear: 2018,
      endtimeMonth: 5,
      endtimeDate: 15,
      endtimeHours: 9,
      endtimeMinutes: 0,
      endtimeSeconds: 0,
      timeZone: "Europe/Lisbon" 
      // ex:  timeZone: "America/New_York"
      //go to " http://momentjs.com/timezone/ " to get timezone
    });
  </script>
<!--===============================================================================================-->
  <script src="vendor/tilt/tilt.jquery.min.js"></script>
  <script >
    $('.js-tilt').tilt({
      scale: 1.1
    })
  </script>
<!--===============================================================================================-->
  <script src="js/main.js"></script>

</body>
</html>