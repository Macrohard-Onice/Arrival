<?php
$btnlink = "window.open('https://play.google.com/store/apps/details?id=com.cards.card&hl=fr&gl=US', '_blank').focus();";
$btnlink = "window.location ='contact'";
echo '  <div class="main-footer-container">

      <div class="top-row-footer">





      <div class="coordonnees-footer-wrapper">


        <div class="coordonnees-footer-wrapper-image">

      </div>

      <span class="coordonnees-footer-wrapper-text"> HiCards <br> contact@HiCards.com <br> <br>
      <button onclick="';
      echo "$btnlink";
      echo '"class="contactbtn2 btn" > Contactez-nous</button><span>

      </div>


        <button onclick="';
        echo "$btnlink";
        echo '"class="contactbtn2 btn pos" > TÉLÉCHARGE L'; echo "$APO"; echo 'APP</button>


      </div>


              <span class="copyright-text"> HiCards © 2021</span>
  </div>

';
?>
