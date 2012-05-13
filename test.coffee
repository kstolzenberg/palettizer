$ ->
  # hi!
  $("#color1").html randc()
  $("#color2").html randc()
  $("#color3").html randc()
  $("#color4").html randc()
  $("#color5").html randc()
  $("#color6").html randc()

randc = ->
  return Math.round(Math.random()*256) + ", " + Math.round(Math.random()*256) + ", " + Math.round(Math.random()*256)