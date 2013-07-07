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
    $("#close-notice").on "click", ->
      $(".flash").hide()

  #front page disappear and reappear
  if $(".photos-reappear")
    $(".photos-reappear").hide()
    $(".photos-reappear").each (i)->
      this_width = $(@).width()
      this_height = $(@).height()
      signin_position = $(".signin-div")

      random_left = Math.floor(Math.random() * ($(window).width() - this_width - 335) + 335)
      random_top = Math.floor(Math.random() * ($(window).height() - this_height - 25))
      $(@).css({"left": random_left, "top": random_top}).delay(1100*i).fadeIn 'slow', ->
        $(@).fadeOut('slow')