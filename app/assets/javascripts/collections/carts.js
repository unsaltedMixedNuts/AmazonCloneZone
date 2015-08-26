AmazonCloneZone.Collections.Carts = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Cart,
  url: "/api/carts",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.Cart({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }

});
