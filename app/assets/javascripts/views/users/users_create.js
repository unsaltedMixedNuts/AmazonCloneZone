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

  signInCallback: function(event){
    if(this.callback) {
      this.callback();
    } else {
      Backbone.history.navigate("", { trigger: true });
    }
  },

  signInAsGuest: function (event) {
    event.preventDefault();
    var view = this;
    var $form = $(event.currentTarget);
    var formData = $form.serializeJSON().user;
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
    var view = this;
    var $form = $(event.currentTarget);
    var formData = $form.serializeJSON().user;

    var $errorsHTML = this.validateFormInput(formData);
    if ($errorsHTML) {
      $(".flash-errors").html($errorsHTML);
      return;
    }

    this.model.set(formData);
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

  validateFormInput: function (formData) {
    var errors = false;
    var $html = $("<ul>");
    var li;

    if (!formData.name) {
      li = "<li>Name cannot be blank</li>";
      $html.append(li);
      errors = true;
    }

    if (!formData.email) {
      li = "<li>Email cannot be blank</li>";
      $html.append(li);
      errors = true;
    }

    if (formData.email != formData.email_2) {
      li = "<li>Emails must match</li>";
      $html.append(li);
      errors = true;
    }

    if (!formData.password) {
      li = "<li>Password cannot be blank</li>";
      $html.append(li);
      errors = true;
    }

    if (formData.password != formData.password_2) {
      li = "<li>Passwords must match</li>";
      $html.append(li);
      errors = true;
    }

    if (formData.password === formData.password_2 && formData.password.length > 0 && formData.password.length < 5 ) {
      li = "<li>Password must have a minimum of 5 characters</li>";
      $html.append(li);
      errors = true;
    }

    if (errors) {
      return $html;
    } else {
      return;
    }
  }

});
