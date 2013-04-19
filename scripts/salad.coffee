# Description:
# Salad Celebration
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
# salad - Display a salad
#
# Author:
# pingles

salads = [
    "http://whatschrisdoing.com/salads/Cold_meat_salad.jpg",
    "http://whatschrisdoing.com/salads/kale-salad-with-cherries-and-pecans-9995.jpg",
    "http://whatschrisdoing.com/salads/ensalada-ricaa.jpg",
    "http://whatschrisdoing.com/salads/salad.jpg",
    "http://whatschrisdoing.com/salads/Fruit-Salad.jpg",
    "http://whatschrisdoing.com/salads/taco-salad-text.jpg",
    "http://whatschrisdoing.com/salads/hero_teriyaki-salad.png"
]

module.exports = (robot) ->
  robot.hear /\bsalad\b/i, (msg) ->
    msg.send msg.random salads
