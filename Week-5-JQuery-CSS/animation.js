// Hide the result div
//$("#result").hide();

// Hide the result div using fade with 1s duration
//$("#result").fadeOut(1000);

// Hide and show the result div using slide
//$("#result").slideUp().slideDown();

// Hide using slide, wait one second and fade
//$("#result").slideUp().delay(1000).fadeIn()

// Create your own speed and use it
//$.fx.speeds['absurd-velocity'] = 1500;
//$("#result").slideUp('absurd-velocity').delay(1000).fadeIn('absurd-velocity')

// Set the default animation speed to 2000
//$.fx.speeds['_default'] = 2000;

// Slide jquery projects and when it's done show on the result div that it's done
//$("#myContent ul li").slideUp(function() {
  //$("#result").text("Done!!");
//});

// Move the result div to the bottom left corner
//$("#result").animate({
  //top:  "90%",
  //left: "0"
//});

// Move to the left in 5seconds the result div with linear animation
//$("#result").animate({
  //left: "0"
//}, 5000, "linear");

// Create your own function of easing and use it
$.easing['myEase'] = function(p){ 
  return p * 10
};

$("#result").animate({
  left: "0"
}, 1000, "myEase");
