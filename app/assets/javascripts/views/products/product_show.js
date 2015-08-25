AmazonCloneZone.Views.ProductShow = Backbone.View.extend({
  template: JST["products/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  render: function () {
    var content = this.template({ product: this.model });
    this.$el.html(content);

    var questionsSubview = new AmazonCloneZone.Views.QuestionsIndex({ product: this.model });
    this.$("#questions-answers").html(questionsSubview.render().$el);

    var reviewsSubview = new AmazonCloneZone.Views.ReviewsIndex({ product: this.model });
    this.$("#product-reviews").html(reviewsSubview.render().$el);


    return this;
  }
});
