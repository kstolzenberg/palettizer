$ ->
  $("#color1").css("background-color",randcolor())
  $("#color2").css("background-color",randcolor())
  $("#color3").css("background-color",randcolor())
  $("#color4").css("background-color",randcolor())
  $("#color5").css("background-color",randcolor())
  $("#color6").css("background-color",randcolor())

  $("#color1").html($("#color1").css("background-color"))
  $("#color2").html($("#color2").css("background-color"))
  $("#color3").html($("#color3").css("background-color"))
  $("#color4").html($("#color4").css("background-color"))
  $("#color5").html($("#color5").css("background-color"))
  $("#color6").html($("#color6").css("background-color"))

randc = ->
  return Math.round(Math.random()*256)

randcolor = ->
  return 'rgb(' + randc() + "," + randc() + "," + randc() + ')'
