# Description:
#   Motivate someone
#
# Commands:
#   hubot m <query> - Motivate someone

module.exports = (robot) ->
  robot.respond /m(otivate)?( .*)?$/i, (msg) ->
    imageMe msg, 'site:spin.despair.com', (url) ->
      msg.send url

imageMe = (msg, query, cb) ->
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      if images.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"

