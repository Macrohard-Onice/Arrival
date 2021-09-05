<?php echo "


<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js'></script>
  <script src='https://unpkg.com/aos@2.3.1/dist/aos.js'></script>
  <script>
    AOS.init();
  </script>
  <script src='script.js' type='text/javascript'></script>
  <script>
  if ( window.history.replaceState ) {
      window.history.replaceState( null, null, window.location.href );
  }

var main = document.getElementsByTagName('main');
main[0].onclick = myFunction4;

function _scrollTo(selector, yOffset = 0){
  const el = document.querySelector(selector);
  const y = el.getBoundingClientRect().top + window.pageYOffset + yOffset;

  window.scrollTo({top: y, behavior: 'smooth'});
}
if( /Android|webOS|iPhone|iPad|Mac|Macintosh|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {

  $('.hidedisc').click(function () {
      $('html, body').animate({ scrollTop: $('#découvrir').offset().top }, 500);
      return true;
  });
  $('#refrences').click(function () {
      $('html, body').animate({ scrollTop: $('#references').offset().top }, 500);
      return true;
  });
}



$('.hidedisc').click(function () {
    $('html, body').animate({ scrollTop: $('#découvrir').offset().top }, 10);
    return true;
});
$('#refrences').click(function () {
    $('html, body').animate({ scrollTop: $('#references').offset().top }, 10);
    return true;
});

function displaysend() {

    var x = document.getElementById('sendfac');


    x.style.display = 'block';


}



function stopandrefresh(){
window.stop();

setTimeout(function(){
      window.location.href=window.location.href
}, 50);

}
function appearload() {

  var x = document.getElementById('loading');
  var x2 = document.getElementById('loading2');
  var x3 = document.getElementById('subload2');

  x.style.display = 'block';
  x2.style.display = 'block';
    x3.style.display = 'block';
}
function appearload2() {

  var x = document.getElementById('loading3');

  x.style.display = 'block';

}


function displayrelance() {
  $('html, body').css({
  overflow: 'hidden',
});
  var x = document.getElementById('relance');
  var vid = document.getElementById('contentrel');
  if (x.style.display === 'none') {
    vid.style.animation = 'zoomin 0.5s ease-in-out';
    x.style.display = 'flex';
    vid.style.display = 'flex';
  } else {
      vid.style.animation = 'zoomout 0.5s ease-in-out';
          x.style.animation = 'fadeout 0.5s ease-in-out';
    setTimeout(function(){
            x.style.display = 'none';
            vid.style.animation = '';
                x.style.animation = '';
    }, 450);
      $('html, body').css({
        overflow: 'visible',
      });
  }
}

  function fct4() {
      var x = document.getElementById('show');
        var x2 = document.getElementById('show2');
          var x3 = document.getElementById('show3');

    x.style.display = 'none'
      x2.style.display = 'none'
        x3.style.display = 'none'
  }
  function myFunction4() {
    var x = document.getElementById('show');
      var x2 = document.getElementById('show2');
        var x3 = document.getElementById('show3');


      x.style.animation = 'slideout 0.5s ';
        x2.style.animation = 'slideout 0.5s ';
          x3.style.animation = 'slideout 0.5s ';
      setTimeout(function(){fct4()}, 450);


  }







  function fct() {
      var x = document.getElementById('show');
    x.style.display = 'none'
    var x2 = document.getElementById('show2');
  x.style.display = 'none'
  var x3 = document.getElementById('show3');
x.style.display = 'none'
  }

  function fct89() {
      var x = document.getElementById('show');
    x.style.display = 'none'
    var x = document.getElementById('show2');
  x.style.display = 'none'
  var x = document.getElementById('show3');
x.style.display = 'none'
  }

  function myFunction() {
    var x = document.getElementById('show');
      var x2 = document.getElementById('show2');
        var x3 = document.getElementById('show3');

    if (x.style.display === 'flex' ){

        x.style.animation = 'slideout 0.5s ';
          x2.style.animation = 'slideout 0.5s ';
            x3.style.animation = 'slideout 0.5s ';
    setTimeout(function(){fct89()}, 450);


    } else {
      x.style.display = 'flex';
      x.style.animation = 'slidein 0.5s ';
    }
}





function fct2() {
    var x = document.getElementById('show2');
  x.style.display = 'none'
}
function fct16() {
  var x = document.getElementById('show2');
  x.style.display = 'flex';
      x.style.animation = 'slidein 0.5s ';
}


  function myFunction2() {


  var x = document.getElementById('show2');
  var x2 = document.getElementById('show');
  var x3 = document.getElementById('show3');

    if (x.style.display === 'flex' || x2.style.display === 'flex' || x3.style.display === 'flex'){
      if (x.style.display === 'none') {
        setTimeout(function(){fct16()}, 300);
      } else {
    x.style.animation = 'slideout 0.5s ';
    setTimeout(function(){fct2()}, 450);
      }
      var x = document.getElementById('show');
      var x3 = document.getElementById('show3');
      x.style.animation = 'slideout 0.5s ';
      x3.style.animation = 'slideout 0.5s ';
      setTimeout(function(){fct3()}, 450);
      setTimeout(function(){fct()}, 450);

    } else {

      if (x.style.display === 'none') {
        var x = document.getElementById('show2');
        x.style.display = 'flex';
            x.style.animation = 'slidein 0.5s ';
      } else {
  x.style.animation = 'slideout 0.5s ';
  setTimeout(function(){fct2()}, 450);
      }
      var x = document.getElementById('show');
      var x3 = document.getElementById('show3');
      x.style.animation = 'slideout 0.5s ';
      x3.style.animation = 'slideout 0.5s ';
      setTimeout(function(){fct3()}, 450);
      setTimeout(function(){fct()}, 450);
    }


  }

  function fct12(){
    var x = document.getElementById('btnshowabout');
    var x2 = document.getElementById('showabout');
    x2.style.display = 'none';
       x.style.display = 'block';


  }
  function myFunction7() {
    var x = document.getElementById('btnshowabout');
    var x2 = document.getElementById('showabout');



if (x2.style.display === 'none') {
      x2.style.display = 'flex';

          x2.style.animation = 'fadein 0.5s ';

     x.style.display = 'none';
}else {


     x2.style.animation = 'fadeout 0.5s ';


     setTimeout(function(){fct12()}, 499);
        }



  }




  function fct3() {
      var x = document.getElementById('show3');
    x.style.display = 'none'
  }
  function fct17() {
    var x = document.getElementById('show3');
    x.style.display = 'flex';
        x.style.animation = 'slidein 0.5s ';
  }


    function myFunction3() {

      var x = document.getElementById('show3');
      var x2 = document.getElementById('show2');
      var x3 = document.getElementById('show');

  if (x.style.display === 'flex' || x2.style.display === 'flex' || x3.style.display === 'flex'){
      if (x.style.display === 'none') {

        setTimeout(function(){fct17()}, 300);
    } else {
      x.style.animation = 'slideout 0.5s ';
      setTimeout(function(){fct3()}, 450);

    }


    var x = document.getElementById('show');
    var x3 = document.getElementById('show2');

    x.style.animation = 'slideout 0.5s ';
    x3.style.animation = 'slideout 0.5s ';

    setTimeout(function(){fct2()}, 450);
    setTimeout(function(){fct()}, 450);

  } else {
    if (x.style.display === 'none') {

      var x = document.getElementById('show3');
      x.style.display = 'flex';
          x.style.animation = 'slidein 0.5s ';
  } else {
    x.style.animation = 'slideout 0.5s ';
    setTimeout(function(){fct3()}, 450);

  }


  var x = document.getElementById('show');
  var x3 = document.getElementById('show2');

  x.style.animation = 'slideout 0.5s ';
  x3.style.animation = 'slideout 0.5s ';

  setTimeout(function(){fct2()}, 450);
  setTimeout(function(){fct()}, 450);
  }

  }




  function myFunction5() {
    var x = document.getElementById('show3');

      x.style.display = 'none';


    var x = document.getElementById('show');

      x.style.display = 'none';
      var x = document.getElementById('show2');

        x.style.display = 'none';

  }
  $(window).scroll(function(){
      if($(document).scrollTop() > 0) {
          $('#header').addClass('small');
          $('#fd').addClass('small');
          $('#headere').addClass('small');
          $('#show').addClass('small');
          $('#show2').addClass('small');
          $('#show3').addClass('small');


      } else {

          $('#header').removeClass('small');
          $('#fd').removeClass('small');
          $('#headere').removeClass('small');
          $('#show').removeClass('small');
          $('#show2').removeClass('small');
          $('#show3').removeClass('small');
      }
  });
  var observe;
  if (window.attachEvent) {
      observe = function (element, event, handler) {
          element.attachEvent('on'+event, handler);
      };
  }
  else {
      observe = function (element, event, handler) {
          element.addEventListener(event, handler, false);
      };
  }
  function init () {
      var text = document.getElementById('text');
      function resize () {
          text.style.height = 'auto';
          text.style.height = text.scrollHeight+'px';
      }
      /* 0-timeout to get the already changed text */
      function delayedResize () {
          window.setTimeout(resize, 0);
      }
      observe(text, 'change',  resize);
      observe(text, 'cut',     delayedResize);
      observe(text, 'paste',   delayedResize);
      observe(text, 'drop',    delayedResize);
      observe(text, 'keydown', delayedResize);

      text.focus();
      text.select();
      resize();
  }

  function animateValue(obj, start, end, duration) {
  let startTimestamp = null;
  const step = (timestamp) => {
    if (!startTimestamp) startTimestamp = timestamp;
    const progress = Math.min((timestamp - startTimestamp) / duration, 1);
    obj.innerHTML = Math.floor(progress * (end - start) + start);
    if (progress < 1) {
      window.requestAnimationFrame(step);
    }
  };
  window.requestAnimationFrame(step);
}






var inited = false

$(window).scroll(function() {
   var hT = $('#value').offset().top,
       hH = $('#value').outerHeight(),
       wH = $(window).height(),
       wS = $(this).scrollTop();
    console.log((hT-wH) , wS);

    if ( inited ) {
  return
}

   if (wS > (hT+hH-wH)){
    inited = true
     const obj = document.getElementById('value');
     animateValue(obj, 0, 20, 1000);
     const obj2 = document.getElementById('value2');
     animateValue(obj2, 0, 35, 1000);
     const obj3 = document.getElementById('value3');
     animateValue(obj3, 0, 800, 1000);
   }
});











function sort () {
    var text = document.getElementsByClassName('user-list');

}






  </script>"; ?>
