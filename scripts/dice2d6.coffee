module.exports = (robot) ->
  robot.hear /サイコロ/, (msg) ->
    msg.send report roll 2, 6

report = (results) ->
  "えいっ！ #{results.join('と')} がでたよ！"

roll = (dice, sides) ->
  rollOne(sides) for i in [0...dice]

rollOne = (sides) ->
  1 + Math.floor(Math.random() * sides)
