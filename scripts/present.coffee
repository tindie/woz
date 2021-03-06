# Description:
#   A way to give presents
#
# Commands:
#   hubot present me - Gives a present

module.exports = (robot) ->
  robot.respond /(present)( me)?( .*)?/i, (msg) ->
    imageMe msg, 'lolcat gift', (url) ->
      msg.send url

imageMe = (msg, query, cb) ->
  q = v: '1.0', rsz: '10', q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"

