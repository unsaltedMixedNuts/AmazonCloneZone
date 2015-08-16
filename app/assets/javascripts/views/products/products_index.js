AmazonCloneZone.Views.ProductsIndex = Backbone.View.extend({
  // template: _.template("<% products.each(function(product) { %> <%= product.escape('name') %><br><br> <% }) %>"),

  template: JST["products/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render)
  },

  render: function () {
    var content = this.template({ products: this.collection });
    this.$el.html(content);
    return this;
  }
});
