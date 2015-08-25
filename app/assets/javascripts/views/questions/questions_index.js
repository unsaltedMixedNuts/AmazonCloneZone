AmazonCloneZone.Views.QuestionsIndex = Backbone.View.extend({
  template: JST["questions/index"],

  events: {
    "submit form": "submitNewQuestion"
  },

  initialize: function (options) {
    this.product = options.product;
    this.listenTo(this.product.questions(), "add", this.render)
  },

  render: function () {
    var content = this.template({ product: this.product });
    this.$el.html(content);
    return this;
  },

  submitNewReview: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON()["question"];
    var newQuestion = new AmazonCloneZone.Models.Question(params);
    var view = this;
    newQuestion.save([], {
      success: function () {
        view.product.questions().add(newQuestion);
      }
    });
  }
});
