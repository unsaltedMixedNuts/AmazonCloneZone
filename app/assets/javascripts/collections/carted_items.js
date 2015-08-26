AmazonCloneZone.Collections.CartedItems = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.CartedItem,
  url: "/api/carted_items",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.CartedItem({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }

});
