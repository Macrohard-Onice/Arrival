
//Handle the countdown
var countDownDate = new Date("Oct 30, 2021 20:30:00").getTime();
var x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);


  $('#count4Days').html(days);

  $('#count4Hours').html(hours);

  $('#count4Minutes').html(minutes);

  $('#count4Seconds').html(seconds);




    $('#count5Days').html(days);

    $('#count5Hours').html(hours);

    $('#count5Minutes').html(minutes);

    $('#count5Seconds').html(seconds);








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

var countDownDate = new Date("Oct 30, 2021 20:30:00").getTime();
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);


      const count5days = document.getElementById('count5Days');
      animateValue(count5days, 0, days, 1500);

      const count5Hours = document.getElementById('count5Hours');
      animateValue(count5Hours, 0, hours, 1500);

      const count5Minutes = document.getElementById('count5Minutes');
      animateValue(count5Minutes, 0, minutes, 1900);

      const count5Seconds = document.getElementById('count5Seconds');
      animateValue(count5Seconds, 0, seconds, 1900);

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

    const count4days = document.getElementById('count4Days');
    animateValue(count4days, 0, days, 1900);

    const count4Hours = document.getElementById('count4Hours');
    animateValue(count4Hours, 0, hours, 1900);

    const count4Minutes = document.getElementById('count4Minutes');
    animateValue(count4Minutes, 0, minutes, 1900);

    const count4Seconds = document.getElementById('count4Seconds');
    animateValue(count4Seconds, 0, seconds, 1900);

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
