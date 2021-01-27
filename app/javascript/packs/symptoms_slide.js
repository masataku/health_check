$(function(){
  $("#has-symptoms").on('click', function(){
    $("#symptoms").slideDown();
  });
  $("#not-symptoms").on('click', function(){
    $("#symptoms").slideUp();
  });
});