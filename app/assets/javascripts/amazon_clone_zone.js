window.AmazonCloneZone = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function () {
    this.currentUser = new AmazonCloneZone.Models.CurrentUser();
    this.currentUser.fetch();
    this.cart = new AmazonCloneZone.Models.Cart();
    this.cart.fetch();
    this.header = new AmazonCloneZone.Views.Header({ el: "#header" });
    this.router = new AmazonCloneZone.Routers.Router({ $rootEl: $("#main") });
    Backbone.history.start();
  }
};
