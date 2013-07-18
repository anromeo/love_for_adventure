# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  if $(".collage-pic-select-div")
    $(".collage-pic-select-div").on "click", ->
      $(".collage-pic-select-div").css("border", "none")
      $(@).css("border", "green solid 5px")