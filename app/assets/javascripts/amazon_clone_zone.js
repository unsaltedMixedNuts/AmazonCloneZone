window.AmazonCloneZone = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function () {
    this.currentUser = new AmazonCloneZone.Models.CurrentUser();
    this.currentUser.fetch({ success: function () {
      AmazonCloneZone.cart = new AmazonCloneZone.Models.Cart();
      AmazonCloneZone.cart.fetch();

      AmazonCloneZone.header = new AmazonCloneZone.Views.Header({ el: "#header" });
      AmazonCloneZone.footer = new AmazonCloneZone.Views.Footer({ el: "#footer" });

      AmazonCloneZone.router = new AmazonCloneZone.Routers.Router({
        $rootEl: $("#main"), $headerEl: $("#header"), $footerEl: $("#footer")
      });
      Backbone.history.start();
    } });
  }
};
