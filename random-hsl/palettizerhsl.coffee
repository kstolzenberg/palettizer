$ ->
  c1 = randcolor()
  $("#color1")
    .css("background-color",c1)
  $("#color1").click ->
    $(this).html(c1)

  c2 = randcolor()
  $("#color2")
    .css("background-color",c2)
  $("#color2").click ->
    $(this).html(c2)

  c3 = randcolor()
  $("#color3")
    .css("background-color",c3)
  $("#color3").click ->
    $(this).html(c3)

  c4 = randcolor()
  $("#color4")
    .css("background-color",c4)
  $("#color4").click ->
    $(this).html(c4)

  c5 = randcolor()
  $("#color5")
    .css("background-color", c5)
  $("#color5").click ->
    $(this).html(c5)

  c6 = randcolor()
  $("#color6")
    .css("background-color", c6) 
  $("#color6").click ->
    $(this).html(c6)
    #use variables to return HSL calculated value wthout going through the browser reading the applied css background color (in RGB)

randa = ->
  return Math.round(Math.random()*360)
  #hue value

randb = ->
  return Math.round(Math.random()*100)
  #saturation percent

randc = ->
  return Math.round(Math.random()*100)
  #lightness percent

randcolor = ->
  return 'hsl(' + randa() + "," + randb() + "%," + randc() + '%)'





