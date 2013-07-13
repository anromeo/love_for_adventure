# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#photo_pic").attr('multiple', 'multiple')
  $("#photo_pic").fileupload
    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#pics').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a gif, jpeg, or png image file")

    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')
        if progress is 100
          $(".upload").fadeOut(2000)
    done: (e, data) ->
      file = data.files[0]
      domain = $('#pics').attr('action')
      path = $('#pics input[name=key]').val().replace('${filename}', file.name)
      to = $('#pics').data('post')
      content = {}
      content[$('#pics').data('as')] = domain + path
      $.post(to, content)
      data.context.remove() if data.context # remove progress bar

    fail: (e, data) ->
      alert("#{data.files[0].name} failed to upload.")
      console.log("Upload failed:")
      console.log(data)

  if $("#photo-form-submit")
    $("#photo-form-submit").hide()