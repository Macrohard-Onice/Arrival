<!doctype html>
<html class="no-js" lang="fr-FR">
<head>


  <meta name="viewport" content="width=device-width">
 <meta name=”robots” content="index, follow">
 <meta charset="UTF-8" />
  <title>
    Accueil - HiCards
  </title>

<link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
<style media="screen">
  .focused2 {
      color: var(--SecondaryColor);
  }
  main {
    background: none;
height: 70vh;
  }

</style>
</head>
<body >

  <header id="header">

    <?php include'header.php' ?>

  </header>

  <main>






<div id="découvrir" class="anchor2" style="margin-top: -80px"></div>
<div  style="padding-top: 4em;" class="text-image-text-wrapper22" data-aos="fade-up"  data-aos-delay= "200" >

  <span class="text-image-text-title"> SECTION EN CONSTRUCTION <br>  </span>

      <div style="margin: 1em auto auto auto ;" class="login-text-underline"></div>



</div>






</main>

<footer data-aos="fade-in">

    <?php include'footer.php' ?>
  

</footer>

<?php include 'necessary-script.php'; ?>
<script src="rellax.min.js"></script>
<script>

      // Need DEBUG for old version of Rellax.js
      var DEBUG = false;
      var rellax = new Rellax('.rellax');

</script>

</body>
</html>
