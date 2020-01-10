# Description:
#   hubot anonymous post
#
# Commands:
#   hubot anon MESSAGE
#   hubot anon #general MESSAGE
#
# Author:
#   @shokai

config =
  to: '#naisho'

module.exports = (robot) ->

  robot.respond /( [\S\s]*?)/i, (msg) ->
    from = msg.message.user.name
    text = msg.message
    to = config.to
    stg = msg.message.text
    atext = stg.slice(11)
    robot.send {room: to}, "★投稿がありました\n ----------message-----------\n #{atext}"
    msg.send "@#{from} #{to}目安箱に\n「#{atext}」と投函しました"
    return

#  robot.respond /(.+)/i, (msg) ->
#    from = msg.message.user.name
#    args = msg.match[1].trim().split(/\s+/)
#    if /[#@][a-zA-Z0-9_\-]+/.test args[0]
#      to = args.shift()
#    else
#      to = config.to
#    text = args.join(' ')
#    robot.send {room: to}, text
#    msg.send "@#{from} #{to}目安箱に「#{text}」と投函しました"
#    return