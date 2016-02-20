function View(){};

View.prototype.fadeDivs = function(div1, div2){
  $(div1).fadeOut(200, function(){
    })
    setTimeout(function(){
      $(div2).fadeIn(400, function(){
      })
    }, 250)
};
View.prototype.addGoldstarDOM = function(response){
  var userRow="tr#" + response
  var userCell = $(userRow).children();
  var goldstar = "<img src='../images/goldstar3.png'>"
  $(goldstar).hide().appendTo(userCell).fadeIn("slow");
}

View.prototype.getChore = function(){
  $('#did-a-thing').on("click", ".chore", function(e){
  e.preventDefault();
  var chore = $(this).attr("id");
  console.log(chore);
  return chore;
  })
}

function Controller(view){
  this.view = view;
};

Controller.prototype.addGoldstar = function(user, chore){
  var uri = "/users/" + user + "/chores/" + chore
  var requestObject = $.ajax({url: uri, type: "POST", context: this}).done(function(response){ this.view.addGoldstarDOM(response);
  });
}
