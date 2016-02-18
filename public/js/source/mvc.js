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
  element="li#" + response
  console.log(element);
  $(element).append('<div id="goldstar"></div>')
}

function Controller(view){
  this.view = view;
};

Controller.prototype.addGoldstar = function(user, chore){
  var uri = "/users/" + user + "/chores/" + chore
  var requestObject = $.ajax({url: uri, type: "POST", context: this}).done(function(response){ this.view.addGoldstarDOM(response);
  });
}
