// Replace myContent content with the result of the request google.html
//$("#myContent").load('google.html');

// Replace the result div when click on it with the response of submiting the name to the /hello
//$("#result").click(function() {
  //data = $("#name").val();
  //$.get("/hello/" + data, function(data) {
    //$("#result").text(data);
  //});
//});

// Replace the result div when click on it when the user changes the amount or the currency
// path: /exchange with the parameters amount and currency
//$("#result").click(function() {
  //var options = {
    //"amount":   $("#amount").val(),
    //"currency": $("#currency").val()
  //};
  //$.get("/exchange/", options, function(data) {
    //console.log(data);
  //});
//});

// Save (POST) the personal form to the /add route when click on the result div
// Look the the AJAX Response and the status code
//$("#result").click(function() {
  //$.post('/add', $("#personal").serialize(), function(data) {
    //console.log(data);
  //});
//});

// Make a get request to /sleep when click on the result div
// Show loading while the response does not arrive
// Show the result if everything is ok
// Show 'Error' if there is some problem and change the background-color to red
// When the request ends adds the bordered class to the response
$("#result").click(function() {
  console.log("loading....");
  $.ajax("/sleep", {
    success:  function() {
      console.log('Success');
    },

    complete: function() {
      console.log("Completed!");
    },

    error:    function() {
      console.log('Error!');
    }
  });
});
