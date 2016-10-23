
# app/assets/javascripts/cable/subscriptions/web_notifications.coffee
# Client-side which assumes you've already requested
# the right to send web notifications.
window.game = {}
window.player = {}

App.cable.subscriptions.create "GameChannel",
   # Called when the subscription is ready for use on the server.
  connected: ->

   # Called when the WebSocket connection is closed.
  disconnected: ->

  received: (data) ->
    if data.operation == "create"
      if Number(window.player.id) != Number(data.player_id)
        panel = $('nav#players_panel')
        panel.append("<a class='panel-block' herf='#'><span class='panel-icon'><i class='fa fa-user'></i></span>#{data.player_name}</a>")
    else if data.operation == "destroy"
      $("a\##{data.player_id}").remove()

