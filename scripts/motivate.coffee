# Description:
#   Motivate someone
#
# Commands:
#   hubot m[otivate] <query> - Motivate someone

module.exports = (robot) ->
  robot.respond /m(otivate)? (.*)$/i, (msg) ->
      msg.send 'Good Job ' + msg.match[2] + '!'
