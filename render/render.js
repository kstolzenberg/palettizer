// Generated by CoffeeScript 1.3.1
(function() {
  var randc, randcolor;

  $(function() {
    $(".color1").css("background-color", randcolor());
    $(".color1").click(function() {
      return $(this).html($(this).css("background-color"));
    });
    $(".color2").css("background-color", randcolor());
    $(".color2").click(function() {
      return $(this).html($(this).css("background-color"));
    });
    $(".color3").css("background-color", randcolor());
    $(".color3").click(function() {
      return $(this).html($(this).css("background-color"));
    });
    $(".color4").css("background-color", randcolor());
    $(".color4").click(function() {
      return $(this).html($(this).css("background-color"));
    });
    $(".color5").css("background-color", randcolor());
    $(".color5").click(function() {
      return $(this).html($(this).css("background-color"));
    });
    $(".color6").css("background-color", randcolor());
    return $(".color6").click(function() {
      return $(this).html($(this).css("background-color"));
    });
  });

  randc = function() {
    return Math.round(Math.random() * 256);
  };

  randcolor = function() {
    return 'rgb(' + randc() + "," + randc() + "," + randc() + ')';
  };

}).call(this);
