# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  #dropdown
  $("#header-dropdown-toggle").click (event)->
    event.preventDefault()
    $("#header-dropdown-div-inner").slideToggle(700)

  #main menu toggle
  if $("#main-menu-toggle")
    toggleState = true
    $("#main-menu-toggle").on "click", (event)->
      event.preventDefault()
      menu_text = $(@)
      if(toggleState)
        $("#main-menu").animate({width: "50px"}, ->
          $(".toggle").toggle())
        menu_text.text(">>")
      else
        $(".toggle").toggle()
        $("#main-menu").animate({width: "150px"})
        menu_text.text("<<")
      toggleState = !toggleState

  #flash disappear
  $(".flash").delay(2000).fadeOut()
  if $("#close-notice")
    $("#close-notice").click ->
      $(".flash").hide()