AmazonCloneZone.Views.CartShow = Backbone.View.extend({
  template: JST["carts/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.model.items(), "remove", this.render)
  },

  events: {
    "submit form": "delete",
    "click .cart-button": "checkout"
  },

  checkout: function (event) {
    if (this.model.items().length === 0) {
      alert("Your cart is empty.  To checkout, you must have items in your cart.")
    } else {
      Backbone.history.navigate("#checkout", { trigger: true })
    }
  },

  delete: function (event) {
    event.preventDefault();
    var itemId = $(event.currentTarget).serializeJSON().item.id;
    var thingToRemoveAndDestroy = this.model.items().get(itemId);
    thingToRemoveAndDestroy.destroy();
  },

  render: function () {
    var content = this.template({ cart: this.model });
    this.$el.html(content);
    return this;
  }
});
