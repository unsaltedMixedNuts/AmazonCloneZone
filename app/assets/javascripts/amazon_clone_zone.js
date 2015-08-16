window.AmazonCloneZone = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function () {
    // alert("Hello from Backbone!");
    AmazonCloneZone.Collections.products.fetch();
    var view = new AmazonCloneZone.Views.ProductsIndex({ collection: AmazonCloneZone.Collections.products})
    $("#backbone-section").html(view.render().$el);
  }
};

$(document).ready(function () {
  AmazonCloneZone.initialize();
});
