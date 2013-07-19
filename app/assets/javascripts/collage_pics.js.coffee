# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  if $(".collage-pic-select-div-inner")
    $(".collage-pic-select-div-inner").on "click", ->
      $(".collage-pic-select-div-inner").css("border", "none")
      $this = $(@)
      $this.css("border", "green solid 5px")
      $this.parent(".collage-pic-select-div-outer").children(".collage-radio-button").prop("checked", true)