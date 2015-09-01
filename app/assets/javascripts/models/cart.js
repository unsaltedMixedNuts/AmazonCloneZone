AmazonCloneZone.Models.Cart = Backbone.Model.extend({
  url: "/api/cart",
  urlRoot: "/api/cart",

  emptyCart: function () {
    this.items().each(function (item) {
      item.destroy();
    });
  },

  items: function () {
    if (!this._items) {
      this._items = new AmazonCloneZone.Collections.CartedItems();
    }

    return this._items;
  },

  numItems: function () {
    var numItems = 0
    this.items().each(function (item) {
      numItems += parseInt(item.get("quantity"));
    });

    return numItems
  },

  parse: function (response) {
    // ----------ITEMS----------
    if (response.items) {
      this.items().set(response.items);
      delete response.items;
    }
  },

  subtotal: function () {
    var subtotal = 0
    this.items().each(function (item) {
      var quantity = parseInt(item.escape("quantity"))
      var price = parseFloat(item.escape("price"))
      subtotal += quantity * price
    });

    return parseFloat(this.formatToCurrency(subtotal)).toFixed(2);
  },

  formatToCurrency: function (number) {
    var number = number.toString();

    if (number.indexOf(".") < 0) {
      return number + ".00"
    } else {
      var indexOfDecimal = number.indexOf(".");
      var indexOfLastItem = number.length - 1;
      if ( indexOfLastItem - indexOfDecimal != 2) {
        return number + "0";
      } else {
        return number;
      }
    }
  },

  pluralize: function (number, word) {
    if (number != 1) {
      return word + "s";
    } else {
      return word;
    }
  }
});
