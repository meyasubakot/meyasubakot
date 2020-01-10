# Botちゃん生存確認用のつぶやき処理

# 定期処理をするオブジェクトを宣言
cronJob = require('cron').CronJob


module.exports = (robot) ->

  # 特定のチャンネルへ送信するメソッド(定期実行時に呼ばれる)　
  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # 毎日09:00時に実行(GMT表記)  
  new cronJob('0 00 00 * * *', () ->
    send '#naisho', "-------botの生存確認です。"
    send '#botchan_awake', "-------botの生存確認です。"
  ).start()

  #Slackのチャンネルごとにmeyasubakotアプリの招待が必要
  