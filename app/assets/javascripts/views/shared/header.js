AmazonCloneZone.Views.Header = Backbone.View.extend({

  initialize: function(options){
    this.listenTo(AmazonCloneZone.currentUser, "signIn signOut", this.render);
    this.render();
  },

  events: {
    "click #sign-out-link": "signOut"
  },

  template: JST['shared/header'],

  render: function(){
    var content = this.template({ currentUser: AmazonCloneZone.currentUser });
    this.$el.html(content);
    return this;
  },

  signOut: function(event){
    event.preventDefault();
    AmazonCloneZone.currentUser.signOut({
      success: function(){
        Backbone.history.navigate("", { trigger: true });
      }
    });
  }

});
