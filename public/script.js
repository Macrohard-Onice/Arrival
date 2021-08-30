
//Handle the countdown
var countDownDate = new Date("Oct 30, 2021 20:30:00").getTime();
var x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("countdown").innerHTML = days + "j " + hours + "h "
  + minutes + "m " + seconds + "s ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("countdown").innerHTML = "C'est fini !";
  }
}, 1000);





$('#goMaps').on('click', function(){

  var adress = $(this).find( ".layoutTitle" ).text();

  var adressLink = '<a href="http://maps.google.com/?q=' + adress + '"target="_blank"></a>';
       $( adressLink )[0].click();
})

$('#openCalendar').on('click', function(){

       $( '<a href="CALSHOW://"></a>' )[0].click();
})



for (var i = 0; i < 10; i++) {
$( "#teamContainer" ).append("<img src='assets/images/man.jpg' class='teamIcon'> <div class='teamSeparator'> </div>");
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

    var hT = $('#count').offset().top,
    hH = $('#count').outerHeight(),
    wH = $(window).height(),
    wS = $(this).scrollTop();


    if ( inited ) {
      return
    }

    if (wS > (hT+hH-wH)){
      inited = true

      const counter1 = document.getElementById('count');
      animateValue(counter1, 0, 500, 1500);

      const counter2 = document.getElementById('count2');
      animateValue(counter2, 0, 5, 1500);

      const counter3 = document.getElementById('count3');
      animateValue(counter3, 0, 4, 1500);

    }



});
var intervalId = window.setInterval(function(){

$('#videoBackground').trigger('play');
  if ($(window).scrollTop() > 600) {


        $('#onScroll').css('transform', ' translateX(50%) ')

        $('.countdownContainer').css('transform', ' translateX(-50%)')


  }  if ($(window).scrollTop() < 600) {


  $('#onScroll').css('transform', ' translateX(100vw)')
        $('.countdownContainer').css('transform', ' translateX(0)')

    }
}, 10);
