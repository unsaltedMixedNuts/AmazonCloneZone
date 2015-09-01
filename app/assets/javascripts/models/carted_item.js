AmazonCloneZone.Models.CartedItem = Backbone.Model.extend({
  urlRoot: "/api/carted_items",

  price: function () {
    if (this.attributes.price) {
      var number = this.escape("price");

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
    }
  }
});
