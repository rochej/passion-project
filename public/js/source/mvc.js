//sessions controller

function View(){};

View.prototype.fadeDivs = function(div1, div2){
  $(div1).fadeOut(300, function(){
    })
    setTimeout(function(){
      $(div2).fadeIn(300, function(){
      })
    }, 350)
};
View.prototype.addGoldstarDOM = function(response){
  var userRow="tr#" + response
  var userCell = $(userRow).children();
  var goldstar = "<img src='../images/goldstar3.png'>"
  $(goldstar).hide().appendTo(userCell).fadeIn("slow");
}

function Controller(view){
  this.view = view;
};

Controller.prototype.addGoldstar = function(chore){
  var uri = "/users/chores/" + chore
  var requestObject = $.ajax({url: uri, type: "POST", context: this}).done(function(response){ this.view.addGoldstarDOM(response);
      this.lessDirty();
  });
}

Controller.prototype.lessDirty = function(){
  var uri = "/chores"
  $.ajax({url: uri, type: "GET", context: this}).done(function(response){
    $('#things-to-do').fadeOut(1000);
    setTimeout(function(){
      $('#things-to-do').html(response).fadeIn('fast');
    }, 1000)
  })
}

Controller.prototype.setSession = function(user_id){
  var uri = "/users/" + user_id
  $.ajax({url: uri, type: "POST"});
}
