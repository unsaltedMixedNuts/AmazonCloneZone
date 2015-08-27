AmazonCloneZone.Collections.Orders = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Order,
  url: "/api/orders",


    getOrFetch: function (id) {
      var model = this.get(id);
      var collection = this;

      if (model) {
        model.fetch();
      } else {
        model = new AmazonCloneZone.Models.Order({ id: id });
        model.fetch({
          success: function () {
            collection.add(model);
          }
        });
      }

      return model;
    }
  });

  AmazonCloneZone.Collections.orders = new AmazonCloneZone.Collections.Orders();
