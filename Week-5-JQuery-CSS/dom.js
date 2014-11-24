// Change the width of the h1 element
$("h1").width("250px")

// Change the font-size up to 120%
$("html").css("font-size", "120%")

// Add the hightlighted class to the elements that has the 'new' class
$(".new").addClass("hightlighted")

// Remove the title class from h1
$("h1").removeClass("title")

// Specify the age range in 20-30
//$("#age-range option[value='20-30']").prop("selected", "selected")

// Specify the age range in 20-30 using travesing filters
$("#age-range option").eq(2).prop("selected", "selected")

// Uncheck the "I love learning" checkbox
$("#love").removeAttr("checked")

// Select yellow as a favourite color
$("#color-yellow").prop("checked", "checked")

// Write the selected name of the input in the result div
$("#result").text($("input[name='color']").val())

// Write the text of the selected age in the result div
$("#result").append("<br/>" + $("#age-range").val())

// Writes the number of data likes of jquery-ui in the result div
$("#result").append("<br/>" + $("#jquery-ui").data("likes"))

// Adds 100 to the number of likes and show it in the result div
likes = $("#jquery-ui").data("likes") + 100
$("#jquery-ui").data("likes", likes)
$("#result").append("<br/>" + ($("#jquery-ui").data("likes")))

// Show the absolute position of result in the console
console.log($("#result").offset())

// Move the result to the position 100 top and 150 left
$("#result").offset({top: 100, left: 150})

// Change the width and height of the result up to 300px
$("#result").width("300px").height("300px")

// Add "(User interface)" after "JQueryUI"
$("#jquery-ui").text($("#jquery-ui").text() + " (User interface)")

// Add a li element with the text "Future JQ" after jQueryUI
$("#jquery-ui").after($("<li>Future JQ</li>"))

// Add div containers with the class bordered around every li
$("li").wrap('<div class="bordered">')

// Add a div container with the class bordered around all li
$("li").wrapAll('<div class="bordered">')

// Remove the result div
$("#result").remove()


/**
 *  Final round
 */

// Set the the names of the colours according to their color
$("label").has("input[name='color']").css('color', function() {
  return $(this).children().first().val();
});

// Add links to the li elements, the url is the name ended with .com
$("li").html(function() {
  var currentText = $(this).text();
  return "<a href='http://" + currentText + ".com'>" + currentText + "</a>";
});
