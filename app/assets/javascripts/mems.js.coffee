# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#header-dropdown-toggle").click (event)->
    event.preventDefault()
    $("#header-dropdown-div-inner").slideToggle(700)
  $(".flash").delay(2000).fadeOut()
  if $("#close-notice")
    $("#close-notice").click ->
      $(".flash").hide()