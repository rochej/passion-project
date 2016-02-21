$(document).ready(function() {
  var view = new View();
  var controller = new Controller(view);
  $('#first').on("click", function(e){
    e.preventDefault();
    view.fadeDivs("#first", "#who");
  })
  $("#did-a-thing").on("click", '.user', function(e){
    e.preventDefault();
    $('#thank-you').fadeOut("fast");
    user = $(this).attr("id"); //purposefully global
    view.fadeDivs("#who", "#what");
    $('#did-a-thing').on("click", ".chore", function(e){
      e.preventDefault();
      var chore = $(this).attr("id");
      controller.addGoldstar(user, chore);
      view.fadeDivs("#what", "#thank-you");
    })
  })

  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
