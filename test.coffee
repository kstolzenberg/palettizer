$ ->
  #$("#color1").html randcolor()
  #$("#color2").html randcolor()
  #$("#color3").html randcolor()
  #$("#color4").html randcolor()
  #$("#color5").html randcolor()
  #$("#color6").html randcolor()

  $("#color1").css("background-color",randcolor())
  $("#color2").css("background-color",randcolor())
  $("#color3").css("background-color",randcolor())
  $("#color4").css("background-color",randcolor())
  $("#color5").css("background-color",randcolor())
  $("#color6").css("background-color",randcolor())

randc = ->
  return Math.round(Math.random()*256)

randcolor = ->
  return 'rgb(' + randc() + "," + randc() + "," + randc() + ')'
