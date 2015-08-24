AmazonCloneZone.Views.UsersCreate = Backbone.View.extend({

  initialize: function(options){
    this.listenTo(this.model, "sync change", this.render);
  },

  template: JST['users/create'],

  events: {
    "submit form": "submit"
  },

  render: function(){
    var content = this.template({ user: this.model });
    this.$el.html(content);
    return this;
  },

  submit: function(event){
    event.preventDefault();
    var $form = $(event.currentTarget);
    var userData = $form.serializeJSON().user;
    var that = this;
    this.model.set(userData);
    this.model.save({}, {
      success: function(){
        AmazonCloneZone.currentUser.fetch();
        Backbone.history.navigate("", { trigger: true });
      },
      error: function(data){
        alert("Form invalid. Let the user know what went wrong.");
        console.log(data);
      }
    });
  }

});
