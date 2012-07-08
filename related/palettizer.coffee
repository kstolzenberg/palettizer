$ ->
  c1 = randcolor1()
  c1_str = convert_list_to_hsl(c1)
  $("#color1")
    .css("background-color", c1_str)
  $("#color1").click ->
    $(this).html(c1_str)

  c2 = randcolor2(c1)
  c2_str = convert_list_to_hsl(c2)
  $("#color2")
    .css("background-color",c2_str)
  $("#color2").click ->
    $(this).html(c2_str)

  c3 = randcolor3()
  $("#color3")
    .css("background-color",c3)
  $("#color3").click ->
    $(this).html(c3)

  c4 = randcolor4()
  $("#color4")
    .css("background-color",c4)
  $("#color4").click ->
    $(this).html(c4)

  c5 = randcolor5()
  $("#color5")
    .css("background-color", c5)
  $("#color5").click ->
    $(this).html(c5)

  c6 = randcolor6()
  $("#color6")
    .css("background-color", c6) 
  $("#color6").click ->
    $(this).html(c6)
    



# for better control, remove hsl string from explicit function and leave functions as lists (with inherent order)
# calculate HSL values as a generic list, manipulate/relate, then apply HSL markup for browser to read
# convert list of number 'hsl_list' into 'hsl()' string
# hsl_list = [34,56,77] where [0] is the index position of the first number of the list


convert_list_to_hsl = (hsl_list) ->
  return 'hsl(' + hsl_list[0] + "," + hsl_list[1] + "%," + hsl_list[2] + '%)'


#c1:
randh1 = ->
  return Math.floor(Math.random()*360)
  #hue value; math.floor is more uniform than math.random 

rands1 = ->
  return Math.floor(Math.random()*(60-40+1)+40)
  #saturation percent; trapped by Math.floor(Math.random() * (max - min + 1)) + min

randl1 = ->
  return Math.floor(Math.random()*(60-40+1)+40)
  #lightness percent; trapped by Math.floor(Math.random() * (max - min + 1)) + min

randcolor1 = ->
  return [randh1(), rands1(), randl1()]



#c2=c1 complement:
randcolor2 = (c) ->
  return [(c[0]+180), c[1], c[2]]
  #return 'hsl(' + (c[0] + 180) + "," + c[1] + "%," + c[2] + '%)'
  #need to count for circular representation, where x>360, (x-360)



#c3=c1 light accent:
randh3 = ->
  return Math.round(Math.random()*360)
  #hue value

rands3 = ->
  return Math.round(Math.random()*100)
  #saturation percent

randl3 = ->
  return Math.round(Math.random()*100)
  #lightness percent

randcolor3  = ->
  return 'hsl(' + randh3() + "," + rands3() + "%," + randl3() + '%)'



#c4=c1 dark accent:
randh4 = ->
  return Math.round(Math.random()*360)
  #hue value

rands4 = ->
  return Math.round(Math.random()*100)
  #saturation percent

randl4 = ->
  return Math.round(Math.random()*100)
  #lightness percent

randcolor4  = ->
  return 'hsl(' + randh4() + "," + rands4() + "%," + randl4() + '%)'



#c5=c2 light accent:
randh5 = ->
  return Math.round(Math.random()*360)
  #hue value

rands5 = ->
  return Math.round(Math.random()*100)
  #saturation percent

randl5 = ->
  return Math.round(Math.random()*100)
  #lightness percent

randcolor5  = ->
  return 'hsl(' + randh5() + "," + rands5() + "%," + randl5() + '%)'



#c6=c2 dark accent:
randh6 = ->
  return Math.round(Math.random()*360)
  #hue value

rands6 = ->
  return Math.round(Math.random()*100)
  #saturation percent

randl6 = ->
  return Math.round(Math.random()*100)
  #lightness percent

randcolor6  = ->
  return 'hsl(' + randh6() + "," + rands6() + "%," + randl6() + '%)'



