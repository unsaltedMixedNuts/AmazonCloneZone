AmazonCloneZone.Views.ProductShow = Backbone.View.extend({
  template: JST["products/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  render: function () {
    var content = this.template({ product: this.model });
    this.$el.html(content);
    return this;
  }
});
