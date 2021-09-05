<?php   session_start(); ?>
<!doctype html>
<html class="no-js" lang="fr-FR">
<head>

  <meta name="viewport" content="width=device-width">
 <meta name=”robots” content="index, follow">
 <meta charset="UTF-8" />
  <title>
    Contact - Sematec
  </title>

<link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>

<style media="screen">
.focused4 {
    color: var(--SecondaryColor);
}
</style>
<body >

  <header id="header">

    <?php include'header.php' ?>


  </header>

    <main style="background-color: #f2f2f2; padding-bottom: 2em;">



        <div class="slideshow-wrapper-slice" data-aos="fade-in">

      <div class="slideshow-text-wrapper">

        <span class="slideshow-text-title"  data-aos="fade-in" data-aos-delay= "100" style=" color: var(--SecondaryColor);"> Contactez-nous !   </span>

                <span class="text-image-text-title" data-aos="fade-in" data-aos-delay= "200" style=" color: var(--SecondaryColor);"> <br><br> <br> <br> </span>




      </div>


    </div>




<div class="subnewway">
  <h3 data-aos="fade-up" data-aos-delay="100"  class="text-image-text-title" style=" text-align: center;">Formulaire de contact</h3>
  <div style="margin: 1em auto auto auto ;" class="login-text-underline"></div>

  <div style="  background: white; border-radius: 25px; text-align: center; margin: 2em 0.5em 0 0.5em;">

    <span style=" display: flex; margin: 1em; color: var(--SecondaryColor); letter-spacing: 0px; margin-bottom: -2em;" class="slideshow-text-content"> Merci de remplir ce formulaire afin de nous faire part de vos demandes. </span>
    <span style=" display: flex; margin: 1em;color: var(--SecondaryColor); letter-spacing: 0px; " class="slideshow-text-content"> <br> </span>

  </div>
  <span style=" display: flex;  font-weight: 600; color: var(--SecondaryColor); letter-spacing: 0px; margin-bottom: -2em; " class="slideshow-text-content"> <br> <br>* Champs requis </span>

<div data-aos="fade-up" data-aos-delay="100" class="form-container" style='display: flex; flex-direction: row; align-items: center; justify-content: center;'>

  <form onsubmit="appearload()" class="formob" action="" method="post" enctype="multipart/form-data" style="width: 100%;display: flex; flex-direction: row;">

<div style="margin: 0 2em 0 2em;">
  <label>Prénom *</label>
  <input type="text" placeholder="Votre prénom..." name="firstname" required>

  <label>Nom *</label>
  <input type="text" placeholder="Votre nom..." name="lastname" required>


  <label>Adreese e-mail *</label>
  <input type="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" placeholder="sematec@exemple.com" name="repemail" required>


</div>

<div style="margin: 0 2em 0 2em;">
  <label>Objet *</label>
  <input type="text" placeholder="Décrivez en quelques mots votre demande..." name="subject" required>


  <label for="subject">Corps du message *</label>
  <textarea id="subject" name="body" placeholder="Écrivez ici..." style="height:200px" required></textarea>
  <div style="display: flex; align-items: center; justify-content: center;">

</div>


      <button style="margin-bottom: 0;" type="submit" name="button"class="btn text-image-button"> Envoyer<img class="next-arrow" src="svg/next.svg" style="transform: none; height: 1em; margin-left: 1em;"> </button>

       <div class="lds-dual-ring" style="display: none;" id="loading"> </div>

   </div>

   <label id="loading2" style="position: static; background: none; animation: zoomin 0.5s ease-in-out; margin-top: 1em;"><strong> Envoi en cours <a style="animation: fadeinout 1.5s infinite;">.</a><a style="animation: fadeinout 1.5s infinite; animation-delay: 100ms;">.</a><a style="animation: fadeinout 1.5s infinite; animation-delay: 200ms;">.</a></strong></label>


  </form>
</div>
</div>
</main>
<?php

                     use PHPMailer\PHPMailer\PHPMailer;
                     use PHPMailer\PHPMailer\Exception;
// Include the database configuration file
$servername = "localhost";
$database = "candidatures";
$username = "root";
$password = "";


$conn = mysqli_connect($servername, $username, $password, $database);

if(isset($_POST["button"])){

$subject = $_POST["subject"];
  $body = $_POST["body"];
    $firstname = $_POST["firstname"];
      $lastname = $_POST["lastname"];
        $repemail = $_POST["repemail"];

        $subject2 = mysqli_real_escape_string($conn, $_POST["subject"]);

          $body2 = mysqli_real_escape_string($conn, $_POST["body"]);
              $firstname2 = mysqli_real_escape_string($conn, $_POST["firstname"]);
          $lastname2 = mysqli_real_escape_string($conn, $_POST["lastname"]);
          $repemail2 = mysqli_real_escape_string($conn, $_POST["repemail"]);



        $token = bin2hex(openssl_random_pseudo_bytes(16));
            $token = mysqli_real_escape_string($conn, $token );
          // File upload path


                 $sql = "INSERT INTO messages VALUES ('$lastname2', '$firstname2','$repemail2', '$body2', CURRENT_DATE(), 'en attente', '$subject2', '$token')";


                       if (mysqli_query($conn, $sql)) {




              }else {
                die(mysqli_error($conn));
              };

                             require 'C:\xampp\composer\vendor\autoload.php';

                             $mail = new PHPMailer;
                             $mail->SMTPDebug = 0;
                             $mail->isSMTP();
                             $mail->Host = "smtp.gmail.com";
                             $mail->SMTPAuth = true;
                             $mail->Username = "mailsender.driver@gmail.com";
                             $mail->Password = "vmdgkonocvvbtprh";
                             $mail->SMTPSecure = "tls";
                             $mail->Port = 587;
                             $mail->From = "administratif@sematec-groupe.fr";
                            $mail->CharSet = 'UTF-8';


                            $mail->AddReplyTo("$repemail", "$firstname $lastname");

                             $mail->FromName = "CONTACT -- Site internet";

                             $mail->smtpConnect(
                                 array(
                                     "ssl" => array(
                                         "verify_peer" => false,
                                         "verify_peer_name" => false,
                                         "allow_self_signed" => true
                                     )
                                 )
                             );

                             $mail->addAddress("administratif@sematec-groupe.fr", "Client Sematec");

                             $mail->isHTML(true);

                             $mail->Subject = "$subject";
                             $body = nl2br($body);
                                       $mail->Body = " '$body' <br> <br> <br>  <strong> Email: '$repemail' <br> <br> Nom et prénom: '$firstname $lastname' </strong> ";
                             $mail->AltBody = "$body";

                             if(!$mail->send())
                             {
                                 echo "Mailer Error: " . $mail->ErrorInfo;
                             }
                             else
                             {
                                 echo "";
                             }


// Display status message

echo  "

<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js'></script>
<script>
$('html, body').css({
overflow: 'hidden',
});
</script>
<div class='previewcontainer' style='background: rgba(0,0,0,0.6);' id='relance'>
<img style='width: 2em;filter: invert(9%) sepia(89%) saturate(6882%) hue-rotate(360deg) brightness(92%) contrast(109%);'class='close-btn' id='closebtn' src='svg/close.svg'   onclick='displayrelance()'>
<div class='subdate' id='contentrel' style='animation: zoomin 0.5s ease-in-out; background: white; border-radius: 25px; width: 40vw; height: 30vh;'>

<span style='color:green; text-align: center; margin: 2em; display: flex; flex-direction: column;justify-content: center; align-items: center;'> <strong style='color:green;'> Votre message a bien été envoyé ! <br> <br> Nous reviendrons vers vous dans les plus brefs délais.  </strong>
<br> <br>
<button onclick='displayrelance()'style='margin-bottom: 0; width: 100px; background-color: #d10000; padding: 10px 16px;'class='btn text-image-button'> Fermer</button>
</span>
</div>

</div>



";
}

  mysqli_close($conn);

?>

<footer>

    <?php include'footer.php' ?>

</footer>
<?php include 'necessary-script.php'; ?>
</body>
</html>
