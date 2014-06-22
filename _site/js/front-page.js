$(function(){
  $('.itineraries li').click(function(e){
    var link = $(this).find('a').attr('href');
    window.location = link;
  });
});