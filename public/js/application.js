$(document).ready(function() {
  var view = new View();
  var controller = new Controller(view);
  $('#first').on("click", function(e){
    e.preventDefault();
  view.fadeDivs("#first", "#who");
  })
  $("#did-a-thing").on("click", '.user', function(e){
    e.preventDefault();
    var user = $(this).attr("id");
    view.fadeDivs("#who", "#what");

    var promise = new Promise(function(fulfill, reject){
      var chore = view.getChore();
      console.log(chore);
      if (chore != undefined){
        fulfill(chore);
      }
      else{
        reject(chore);
      }
    });
    promise.then(function(user,chore){
      controller.addGoldstar(user, chore);
    }, function(user, chore){
      console.log("rejected!")
    });

    view.fadeDivs("#what", "#thank-you");
    $('#more').on("click", '#did-a-thing', function(e){
      e.preventDefault();
      view.fadeDivs('#more', '#what')
      var chore = view.getChore();
      view.fadeDivs("#what", "#thank-you");
    })
  })

  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
