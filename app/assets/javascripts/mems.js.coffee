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
      splash_image_position = $("#splash-image")

      random_left = Math.floor(Math.random() * ($(window).width() - this_width - 335) + 335)
      random_top = Math.floor(Math.random() * ($(window).height() - this_height - 25))
      if this_width == 300 & this_height > 200
        $(@).css({"left": random_left, "top": random_top}).delay(1100*i).fadeIn 'slow', ->
          $(@).fadeOut('slow')

    $(".photos-reappear").each (i)->
      this_width = $(@).width()
      this_height = $(@).height()
      splash_image_position = $("#splash-image")

      random_left = Math.floor(Math.random() * ($(window).width() - this_width - 335) + 335)
      random_top = Math.floor(Math.random() * ($(window).height() - this_height - 25))
      if this_width == 300 & this_height > 200
        $(@).css({"left": random_left, "top": random_top}).delay(1100*i).fadeIn 'slow', ->
          $(@).fadeOut('slow')

  if $(".photos-div")
    $(".photos-div").on "mouseover", ->
      $(@).children(".photos-info-div").slideDown("fast")
    $(".photos-div").on "mouseout", ->
      $(@).children(".photos-info-div").slideUp("fast")

  if $(".mems-pics")
    $(".mem-photo-div").on "mouseover", ->
      $(@).children(".photos-info-div").slideDown("fast")
    $(".mem-photo-div").on "mouseout", ->
      $(@).children(".photos-info-div").slideUp("fast")

  if (".mems-previous-scroll")
    scrolling_speed_fast = 1
    scrolling_speed_slow = 75
    previous_interval = ''
    $(".mems-previous-scroll").on 
      mouseover: ->
        clearInterval(previous_interval)
        mem_div = $(@).parent(".mem-all-div").children(".mems-div")
        previous_interval =
          setInterval(->
            current_scroll = mem_div.scrollLeft()
            mem_div.scrollLeft(current_scroll - 1)
          , scrolling_speed_fast)
      mousedown: ->
        clearInterval(previous_interval)
        mem_div = $(@).parent(".mem-all-div").children(".mems-div")
        previous_interval =
          setInterval(->
            current_scroll = mem_div.scrollLeft()
            mem_div.scrollLeft(current_scroll - 50)
          , scrolling_speed_slow)
      mouseup: ->
        clearInterval(previous_interval)
      mouseout: ->
        clearInterval(previous_interval)

    next_interval = ''
    $(".mems-next-scroll").on
      mouseover: ->
        clearInterval(next_interval)
        mem_div = $(@).parent(".mem-all-div").children(".mems-div")
        next_interval =
          setInterval(->
            current_scroll = mem_div.scrollLeft()
            mem_div.scrollLeft(1 + current_scroll)
          , scrolling_speed_fast)
      mousedown: ->
        clearInterval(next_interval)
        mem_div = $(@).parent(".mem-all-div").children(".mems-div")
        next_interval =
          setInterval(->
            current_scroll = mem_div.scrollLeft()
            mem_div.scrollLeft(50 + current_scroll)
          , scrolling_speed_slow)
      mouseup: ->
        clearInterval(next_interval)
      mouseout: ->
        clearInterval(next_interval)

    #preload = (arrayofImages)->
    #  $(arrayofImages).each ->
    #    (new Image()).src = this

    #preload([
    #  "/images/"
    #])