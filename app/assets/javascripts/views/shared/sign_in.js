AmazonCloneZone.Views.SignIn = Backbone.View.extend({

  initialize: function(options){
    this.callback = options.callback;
    this.listenTo(AmazonCloneZone.currentUser, "signIn", this.signInCallback);
  },

  events: {
    "submit #sign-in-form": "submit",
    "submit #guest-sign-in-form": "submit"
  },

  template: JST['shared/sign_in'],

  render: function(){
    this.$el.html(this.template());

    return this;
  },

  submit: function(event){
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

  signInCallback: function(event){
    if(this.callback) {
      this.callback();
    } else {
      Backbone.history.navigate("", { trigger: true });
    }
  }

});
