AmazonCloneZone.Collections.Questions = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Question,
  url: "/api/questions",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.Question({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }
});
