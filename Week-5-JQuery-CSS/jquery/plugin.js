// Create a plugin called reedify that sets the text color to red
$.fn.reedify = function() {
  $(this).css("color", "red");
  return this;
};

// Apply the function to the h1 element of jQuery projects
$("h1").reedify();

// Apply the reedify method and after a fade transition of 1 second
$("li").reedify().fadeOut(2000);

// Add an automatic invocation to all the red class elements
$(".red").reedify;

// Create a plugin that remove all the spaces
$.fn.removeAllSpaces = function() {
  this.each(function(i, elem) {
    var txt = $(elem).text();
    $(elem).text(txt.replace(/\s/g, ""));
  });
};

// And apply it to the p elements
$("p").removeAllSpaces();
