jQuery(function($){
  $("#add-comment").hide();
  $("#add-comment-button").click(function() {
    $("#add-comment").slideDown();    // jquery-ui-rails
    $(this).hide();
  });
});
