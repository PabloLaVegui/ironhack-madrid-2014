$(function() {

  removeEmails();
  setEventHandlers();

});



var removeEmails = function() {
  $("#emails li").remove();
}


var setEventHandlers = function() {

  $("#compose").click(function() {
    $("#blank-email").show();
  });
  $("#blank-close").click(function() {
    $("#blank-email").hide();
  });

  $("#inbox").click(loadMails);

}

var loadMails = function() {
  $.ajax("/email", {
    datatype: "json",
    success: generateMailsList,
    error:   viewError
  });
}

var viewError = function() {
  console.log("Error generating emails list");
}


var generateMailsList = function(data) {
  removeEmails();
  $.each(data, function(i, mail) {
    console.log(mail);
    mailHtml = "<li data-id='" + i + "'>";
    mailHtml += "<div class='checked' data-checked='false'></div>";
    mailHtml += "<div class='starred' data-starred='" + mail['starred'] + "'></div>";
    mailHtml += "<div class='from'><em>From: </em>" + mail['from'] + "</div>";
    mailHtml += "<div class='subject'><em>Subject: </em>" + mail['subject'] + "</div>";
    mailHtml += "<div class='preview'><em>Preview: </em>" + mail['preview'] + "</div>";
    mailHtml += "</li>";
    $("#emails").append(mailHtml);
  });
}
