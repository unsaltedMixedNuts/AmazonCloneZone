AmazonCloneZone.Views.OrdersIndex = Backbone.View.extend({
  template: JST["orders/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render)
  },

  render: function () {
    var content = this.template({ orders: this.collection });
    this.$el.html(content);
    return this;
  }
});
