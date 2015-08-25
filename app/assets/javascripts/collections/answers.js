AmazonCloneZone.Collections.Answers = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Answer,
  url: "/api/answers",

  getOrFetch: function (id) {
    var model = this.get(id);
    var collection = this;

    if (model) {
      model.fetch();
    } else {
      model = new AmazonCloneZone.Models.Answer({ id: id });
      model.fetch({
        success: function () {
          collection.add(model);
        }
      });
    }

    return model;
  }
});
