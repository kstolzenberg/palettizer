$ ->

  # adds random variables to the link url under the page title; generated in line 62, listed in line 3
  $("a#titlelink").attr("href", document.URL.split("?")[0]+'?color1='+c()+'&color2='+c()+'&color3='+c()+'&color4='+c()+'&color5='+c()+'&color6='+c())
  
  # convert nums to rgb, render divs and return name
  nums_from_url = read_variables_from_url()
  c_str1 = convert_list_to_rgb(nums_from_url['color1'])
  $("#color1")
    .css("background-color",c_str1)
  $("#color1").click ->
    $(this).html(c_str1)

  nums_from_url = read_variables_from_url()
  c_str2 = convert_list_to_rgb(nums_from_url['color2'])
  $("#color2")
    .css("background-color",c_str2)
  $("#color2").click ->
    $(this).html(c_str2)

  nums_from_url = read_variables_from_url()
  c_str3 = convert_list_to_rgb(nums_from_url['color3'])
  $("#color3")
    .css("background-color",c_str3)
  $("#color3").click ->
    $(this).html(c_str3)

  nums_from_url = read_variables_from_url()
  c_str4 = convert_list_to_rgb(nums_from_url['color4'])
  $("#color4")
    .css("background-color",c_str4)
  $("#color4").click ->
    $(this).html(c_str4)

  nums_from_url = read_variables_from_url()
  c_str5 = convert_list_to_rgb(nums_from_url['color5'])
  $("#color5")
    .css("background-color",c_str5)
  $("#color5").click ->
    $(this).html(c_str5)

  nums_from_url = read_variables_from_url()
  c_str6 = convert_list_to_rgb(nums_from_url['color6'])
  $("#color6")
    .css("background-color",c_str6)
  $("#color6").click ->
    $(this).html(c_str6)




randc = ->
  return Math.round(Math.random()*256)

c = ->
  return [randc(), randc(), randc(),]

convert_list_to_rgb = (rgb_list) ->
 'rgb(' + rgb_list[0] + "," + rgb_list[1] + "," + rgb_list[2] + ')'



# read variables from url in line 4 or creates url location with variables from line 62; directs these variables to line 7
read_variables_from_url = ->
  vars = {}
  q = document.URL.split("?")[1]

  if q

    q = q.split("&")
  
    for entry in q
      hash = entry.split("=")
      vars[hash[0]] = hash[1].split(',')

    vars

  else

    location.assign('?color1='+c()+'&color2='+c()+'&color3='+c()+'&color4='+c()+'&color5='+c()+'&color6='+c())

