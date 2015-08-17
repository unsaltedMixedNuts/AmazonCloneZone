AmazonCloneZone.Collections.Products = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Product,
  url: "/api/products",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.Product({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }
});

AmazonCloneZone.Collections.products = new AmazonCloneZone.Collections.Products();
