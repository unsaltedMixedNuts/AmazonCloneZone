AmazonCloneZone.Views.OrderShow = Backbone.View.extend({
  template: JST["orders/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  render: function () {
    var content = this.template({ order: this.model });
    this.$el.html(content);
    return this;
  }
});
