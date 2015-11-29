@module 'App', ->
  @module 'Alert', ->
    @show = (name, msg) ->
      $('.alert-container').each -> $(@).remove()
      tpl = $("<div class='alert-container'><div style='margin-top: 15px;' class='alert alert-#{name} fade in'>#{msg}</div></div>")
      $('#content').prepend(tpl)
      tpl.fadeOut(3000)
