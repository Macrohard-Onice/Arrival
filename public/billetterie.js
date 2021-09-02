




$('.wholeTicket').on('click', function(){

  $('.bottomBarContainer').css("display", 'flex');
  $('#onScroll').css("transform", 'translateX(0)');
  $('.wholeTicket').removeClass("selected");
  $('.wholeTicket').find('.ticketOption').removeClass( "selectedInner" );
  $(this).addClass( "selected" );
  $(this).find('.ticketOption').addClass( "selectedInner" );



})



$('#onScroll').on('click', function(){

  var price = $('.selected').find( ".price" ).text();
  var priceInt = jQuery.trim(price).substring(0, price.length - 3);
  priceInt = parseInt(price);

  $('#onScroll').css("transform", 'translateX(-200vw)');
  $('.billeterieContainer').css("transform", 'translateX(-100vw)');
  $('.formContainer').css("display", 'flex');
  $('.formContainer').css("opacity", '1');

  setInterval(function() {
    $('.formContainer').css("transform", 'translateX(0vw)');
  }, 100);

  window.scrollTo(0, 0);


  var clone = $('.selected').clone();

  $('#append').html(clone);

  $('#append').find(".selected").removeClass('selected');


  $('#append').find(".selectedInner").removeClass('selectedInner');

})