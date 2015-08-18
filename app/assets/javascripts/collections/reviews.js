AmazonCloneZone.Collections.Reviews = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Review,
  url: "/api/reviews",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.Review({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }
});

AmazonCloneZone.Collections.reviews = new AmazonCloneZone.Collections.Reviews();
