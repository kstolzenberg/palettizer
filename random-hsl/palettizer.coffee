$ ->
  $("#color1")
    .css("background-color",randcolor())
  $("#color1").click ->
    $(this).html($(this).css("background-color"))

  $("#color2")
    .css("background-color",randcolor())
  $("#color2").click ->
    $(this).html($(this).css("background-color"))

  $("#color3")
    .css("background-color",randcolor())
  $("#color3").click ->
    $(this).html($(this).css("background-color"))

  $("#color4")
    .css("background-color",randcolor())
  $("#color4").click ->
    $(this).html($(this).css("background-color"))

  $("#color5")
    .css("background-color",randcolor())
  $("#color5").click ->
    $(this).html($(this).css("background-color"))

  $("#color6")
    .css("background-color",randcolor()) 
  $("#color6").click ->
    $(this).html($(this).css("background-color"))

randc = ->
  return Math.round(Math.random()*361)

randcolor = ->
  return 'hsl(' + randc() + "," + randc() + "%," + randc() + '%)'
