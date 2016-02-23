$(document).ready(function() {
  var view = new View();
  var controller = new Controller(view);
  $('#first').on("click", function(e){
    e.preventDefault();
    view.fadeDivs("#first", "#who");
  })
  $("#did-a-thing").on("click", '.user', function(e){
    e.preventDefault();
    console.log($(this).attr("id"))
    controller.setSession($(this).attr("id"));
    view.fadeDivs("#who", "#what");
  })
  $('#did-a-thing').on("click", ".chore", function(e){
      e.preventDefault();
      var chore = $(this).attr("id");
      controller.addGoldstar(chore);
      view.fadeDivs("#what", "#thank-you");
  })
  $('#did-a-thing').on("click", "#another-thing", function(e){
      e.preventDefault();
      view.fadeDivs("#thank-you", "#what")
  })
});
