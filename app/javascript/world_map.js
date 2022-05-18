$(document).on('turbolinks:load', function() {

  $("#south_america_map_r1c1").mouseover(function() {
    $("#map_r1_c1").attr ("src", "/images/map_r1_c1_f3.gif");
  }).mouseout(function(){
    $("#map_r1_c1").attr ("src", "/images/map_r1_c1.gif");
  });

  $("#north_america_map_r1c1").mouseover(function() {
    $("#map_r1_c1").attr ("src", "/images/map_r1_c1_f2.gif");
  }).mouseout(function(){
    $("#map_r1_c1").attr ("src", "/images/map_r1_c1.gif");
  });
  
  $("#africa_map_r3c2").mouseover(function() {
    $("#map_r3_c2").attr ("src", "/images/map_r3_c2_f4.gif");
  }).mouseout(function(){
    $("#map_r3_c2").attr ("src", "/images/map_r3_c2.gif");
  });

  $("#australia_map_r4c5").mouseover(function() {
    $("#map_r4_c5").attr ("src", "/images/map_r4_c5_f6.gif");
  }).mouseout(function(){
    $("#map_r4_c5").attr ("src", "/images/map_r4_c5.gif");
  });

  // Asia start
  $("#asia_map_r2c3").mouseover(function() {
    asia_over();
  }).mouseout(function(){
    asia_out();
  });
  $("#asia_map_r3c2").mouseover(function() {
    asia_over();
  }).mouseout(function(){
    asia_out();
  });
  $("#asia_map_r3c4").mouseover(function() {
    asia_over();
  }).mouseout(function(){
    asia_out();
  });
  $("#asia_map_r4c4").mouseover(function() {
    asia_over();
  }).mouseout(function(){
    asia_out();
  });
  $("#asia_map_r4c5").mouseover(function() {
    asia_over();
  }).mouseout(function(){
    asia_out();
  });
  // Asia end

  function asia_over() {
    $("#map_r2_c3").attr ("src", "/images/map_r2_c3_f5.gif");
    $("#map_r3_c2").attr ("src", "/images/map_r3_c2_f5.gif");
    $("#map_r3_c4").attr ("src", "/images/map_r3_c4_f5.gif");
    $("#map_r4_c4").attr ("src", "/images/map_r4_c4_f5.gif");
    $("#map_r4_c5").attr ("src", "/images/map_r4_c5_f5.gif");
  }

  function asia_out() {
    $("#map_r2_c3").attr ("src", "/images/map_r2_c3.gif");
    $("#map_r3_c2").attr ("src", "/images/map_r3_c2.gif");
    $("#map_r3_c4").attr ("src", "/images/map_r3_c4.gif");
    $("#map_r4_c4").attr ("src", "/images/map_r4_c4.gif");
    $("#map_r4_c5").attr ("src", "/images/map_r4_c5.gif");
  }

});