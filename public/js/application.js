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

  $('#month-dropdown').on("click", '#month-choice', function(e){
    e.preventDefault();
    month = $(this).text();
    month_id = $(this).attr("href");
    $('.selected-month').html("<small>"+ month +"</small>");
    var uri = '/monthly/' + month_id;
    $.ajax({url: uri, type:"POST", data: {month_id: month_id}}).done(function(response){
      console.log(response);
    })
  })
});
