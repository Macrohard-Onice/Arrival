<?php
$btnlink = "
window.location.replace('android-app://com.cards.card/'); setTimeout(function () {

window.location.replace('https://play.google.com/store/apps/details?id=com.cards.card&hl=fr&gl=US'); }, 2000);
";
$APO = "'";
echo '
<div class="container-header">
<div class="header-logo-wrapper" >
  <a href="main">
  <img id="headere" class="header-logo-image" src="svg/logo.png">
</a>
  </div>

<div class="nav-bar-wrapper">
  <ul class="nav-bar">


  <li  class="nav-bar-element"><a class="focused1" href="main"> HiCards </a>  </li>

  <li class="nav-bar-element"><a class="focused3" href="/arrival/public/index.html"> Arrival </a>  </li>
      <li class="nav-bar-element"><a class="focused4" href="contact"> Contact </a>  </li>



  </ul>
</div>

<div class="header-right-elements">
<button onclick="';
echo "$btnlink";
echo '"class="contactbtn2 btn" > TÉLÉCHARGE L'; echo "$APO"; echo 'APP</button>

<a onclick="myFunction()">  <img class="menu-icon" src="svg/menu.svg"></a>
</div>
  </header>

<div id="show" class="mobile-menu-wrapper" style="display: none;">
  <ul class="list-mobile">


    <li class="list-mobile-elem"><a class="focused1" href="main"> L'; echo "$APO"; echo 'application </a> </li>

            <li class="list-mobile-elem"><a class="focused3" href="/arrival/public/index.html"> Arrival </a>  </li>
    <li  class="list-mobile-elem"><a class="focused4" href="contact"> Contact </a>  </li>


  </ul>

</div>
</div>
';
?>
