AmazonCloneZone.Views.UsersCreate = Backbone.View.extend({

  initialize: function(options){
    this.listenTo(this.model, "sync change", this.render);
    this.callback = options.callback;
    this.listenTo(AmazonCloneZone.currentUser, "signIn", this.signInCallback);
  },

  template: JST['users/create'],

  events: {
    "submit #sign-up-form": "signUp",
    "submit #guest-sign-in-form": "signInAsGuest",
    "click #guest-sign-in-link": "clickGuestSignInButton"
  },

  render: function() {
    var content = this.template({ user: this.model });
    this.$el.html(content);
    return this;
  },

  clickGuestSignInButton: function () {
    this.$el.find(".guest-sign-in-button").click();
  },

  signInAsGuest: function (event) {
    event.preventDefault();
    var $form = $(event.currentTarget);
    var formData = $form.serializeJSON().user;
    var view = this;

    AmazonCloneZone.currentUser.signIn({
      email: formData.email,
      password: formData.password,
      error: function(){
        view.$(".flash-errors").html("Invalid username and password combination.  Please try again.");
      }
    });
  },

  signUp: function(event){
    event.preventDefault();
    var $form = $(event.currentTarget);
    var userData = $form.serializeJSON().user;
    var view = this;

    this.model.set(userData);
    this.model.save({}, {
      success: function(){
        AmazonCloneZone.currentUser.fetch();
        Backbone.history.navigate("", { trigger: true });
      },
      error: function(data){
        view.$(".flash-errors").html("Form invalid.  Please try again.");
        console.log(data);
      }
    });
  },

  signInCallback: function(event){
    if(this.callback) {
      this.callback();
    } else {
      Backbone.history.navigate("", { trigger: true });
    }
  }

});
