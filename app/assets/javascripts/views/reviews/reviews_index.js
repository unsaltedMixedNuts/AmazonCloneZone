AmazonCloneZone.Views.ReviewsIndex = Backbone.View.extend({
  template: JST["reviews/index"],

  events: {
    "submit form": "submitNewReview"
  },

  initialize: function (options) {
    this.product = options.product;
    this.listenTo(this.product.reviews(), "add", this.render)

  },

  render: function () {
    var content = this.template({ product: this.product });
    this.$el.html(content);
    return this;
  },

  submitNewReview: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON()["review"];
    var newReview = new AmazonCloneZone.Models.Review(params);
    var view = this;
    newReview.save([], {
      success: function () {
        view.product.reviews().add(newReview);
      }
    });
  }
});
