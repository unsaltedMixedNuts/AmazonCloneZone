AmazonCloneZone.Views.CartShow = Backbone.View.extend({
  template: JST["carts/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.model.items(), "remove", this.render)
  },

  events: {
    "submit form": "delete"
  },

  delete: function (event) {
    event.preventDefault();
    var itemId = $(event.currentTarget).serializeJSON().item.id;
    this.model.items().remove({ id: itemId });
    this.model.items().getOrFetch(itemId).destroy();
  },

  render: function () {
    var content = this.template({ cart: this.model });
    this.$el.html(content);
    return this;
  }
});
