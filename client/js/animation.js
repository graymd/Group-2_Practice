$(document).ready(function(){

  $('section div').on('click', 'button', function(event){
    event.preventDefault();
    var relatedMood = '.' + $(this).attr('rel');
    $(this).siblings('button').addClass('animate');
    $(this).siblings('h2').fadeOut('slow');
    // $(this).parent().siblings('h2').fadeOut('slow');
    $(this).addClass('chosenOne');
    $(relatedMood).addClass('active');
    $(relatedMood).addClass('fadein');
    // $(relatedMood).parent('div').addClass('active');
    // $(relatedMood).parent().siblings().removeClass('active');
  });

});