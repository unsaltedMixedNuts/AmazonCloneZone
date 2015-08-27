AmazonCloneZone.Views.Checkout = Backbone.View.extend({
  template: JST["shared/checkout"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  events: {
    "submit #guest-checkout": "checkoutAsGuest",
    "submit #normal-checkout": "checkoutAsNormal"
  },

  checkoutAsGuest: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON().order;
    var newOrder = new AmazonCloneZone.Models.Order(params);
    var view = this;
    newOrder.save([], {
      success: function () {
        Backbone.history.navigate("#orders/" + newOrder.id, { trigger: true })
      }
    });
  },

  checkoutAsNormal: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON().order;
    var newOrder = new AmazonCloneZone.Models.Order(params);
    var view = this;
    newOrder.save([], {
      success: function () {
        Backbone.history.navigate("#orders/" + newOrder.id, { trigger: true })
      }
    });
  },

  render: function () {
    var content = this.template({ cart: this.model });
    this.$el.html(content);
    return this;
  }
});
