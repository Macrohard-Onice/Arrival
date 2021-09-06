var middleOfScreen;
var current;
var elemScrollLeft;
var middleOfelement;
var scroll;

$( document ).ready(function() {
  middleOfScreen = $(window).width()/2;
  $('.ticketCont').css('transform', 'scale(1)');
  $('#first').css('transform', 'scale(1.2)');
  current = $('#ticketRow').scrollLeft();
  $('#ticketRow').scrollLeft(0);
  elemScrollLeft = window.scrollX + $('#first').offset().left;
  $('#ticketRow').scrollLeft(current);
  middleOfelement = $('#first').width()/2;
  scroll = elemScrollLeft - middleOfScreen + middleOfelement;
  $('#ticketRow').animate( { scrollLeft: scroll }, 250);
});

$('.ticketCont').on('click', function(){
  middleOfScreen = $(window).width()/2;
  $('.ticketCont').css('transform', 'scale(1)');
  $(this).css('transform', 'scale(1.2)');
  current = $('#ticketRow').scrollLeft();
  $('#ticketRow').scrollLeft(0);
  elemScrollLeft = window.scrollX + $(this).offset().left;
  $('#ticketRow').scrollLeft(current);
  middleOfelement = $(this).width()/2;
  scroll = elemScrollLeft - middleOfScreen + middleOfelement;
  $('#ticketRow').animate( { scrollLeft: scroll }, 250);
})
