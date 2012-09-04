$ ->
  # adds random variables to the link url under the page title; generated in line 62, listed in line 3
  gc = [randh1(), rands1(), randl1()]
  $("a#titlelink").attr("href", document.URL.split("?")[0]+'?var1='+gc[0]+'&var2='+gc[1]+'&var3='+gc[2])
  

  # convert random variables to colors, render a div, and click-return action for 6 divs
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

  c3 = randcolor3(c1)
  c3_str = convert_list_to_hsl(c3)
  $("#color3")
    .css("background-color",c3_str)
  $("#color3").click ->
    $(this).html(c3_str)

  c4 = randcolor4(c1)
  c4_str = convert_list_to_hsl(c4)
  $("#color5")
    .css("background-color",c4_str)
  $("#color5").click ->
    $(this).html(c4_str)

  c5 = randcolor5(c2)
  c5_str = convert_list_to_hsl(c5)
  $("#color4")
    .css("background-color", c5_str)
  $("#color4").click ->
    $(this).html(c5_str)

  c6 = randcolor6(c2)
  c6_str = convert_list_to_hsl(c6)
  $("#color6")
    .css("background-color", c6_str) 
  $("#color6").click ->
    $(this).html(c6_str)



# function definitions from here on out



convert_list_to_hsl = (hsl_list) ->
  'hsl(' + hsl_list[0] + "," + hsl_list[1] + "%," + hsl_list[2] + '%)'




# c1 represented by random variables; goes to either line 3 or line 92
randh1 = ->
  return Math.floor(Math.random()*361)
  # hue value

rands1 = ->
  return Math.floor(Math.random()*(95-40+1)+40)
  # saturation percent; trapped by Math.floor(Math.random() * (max - min + 1)) + min

randl1 = ->
  return Math.floor(Math.random()*(60-40+1)+40)
  # lightness percent; trapped by Math.floor(Math.random() * (max - min + 1)) + min

# read variables from url in line 4 or creates url location with variables from line 62; directs these variables to line 7
randcolor1 = ->
  vars = {}
  q = document.URL.split("?")[1]

  if q

    q = q.split("&")
    
    for entry in q
      hash = entry.split("=")
      vars[hash[0]] = +hash[1]

    [vars['var1'],vars['var2'],vars['var3']]

  else

    location.assign('?var1='+randh1()+'&var2='+rands1()+'&var3='+randl1())
    



#c2= c1 complement;
randcolor2 = (c) ->
  return [(c[0]+180), c[1], c[2]]


#c3= c1 light accent:
rands3 = ->
  return Math.floor(Math.random()*41)

randl3 = ->
  return Math.floor(Math.random()*(100-70+1)+70)

randcolor3  = (c) ->
  return [c[0], rands3(), randl3()]


#c4= c1 dark accent:
rands4 = ->
  return Math.floor(Math.random()*31)

randl4 = ->
  return Math.floor(Math.random()*(40-5+1)+5)

randcolor4  = (c) ->
  return [c[0], rands4(), randl4()]


#c5= c2 light accent:
rands5 = ->
  return Math.floor(Math.random()*41)

randl5 = ->
  return Math.floor(Math.random()*(100-70+1)+70)

randcolor5  = (c) ->
  return [c[0], rands5(), randl5()]


#c6= c2 dark accent:

rands6 = ->
  return Math.floor(Math.random()*41)

randl6 = ->
  return Math.floor(Math.random()*(40-5+1)+5)

randcolor6 = (c) ->
  return [c[0], rands6(), randl6()]



