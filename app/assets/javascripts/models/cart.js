AmazonCloneZone.Models.Cart = Backbone.Model.extend({
  urlRoot: "/api/carts",

  items: function () {
    if (!this._items) {
      this._items = new AmazonCloneZone.Collections.CartedItems();
    }

    return this._items;
  },

  parse: function (response) {
    // ----------ITEMS----------
    if (response.items) {
      this.items().set(response.items);
      delete response.items;
    }
  }
});
