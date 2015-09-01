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
    var params = $(event.currentTarget).serializeJSON();
    var $message = $("<ul>");

    if (params.review.stars == 0) {
      this.reviewError = true;
      $message.append("<li>Your product review must include a product rating.</li>")
    }

    if (params.review.title == "") {
      this.reviewError = true;
      $message.append("<li>Your product review must include a title.</li>")
    }

    if (params.review.body == "") {
      this.reviewError = true;
      $message.append("<li>Your product review must include content in addition to a rating and title.</li>")
    }

    if (this.reviewError) {
      $message.append("Please submit your review after fixing the above issues.")
      $("#flash-errors-for-reviews").html($message);
      this.reviewError = false;
      // window.scrollTo(0,document.body.scrollHeight);
      return;
    }

    var newReview = new AmazonCloneZone.Models.Review(params.review);
    var view = this;
    newReview.save([], {
      success: function () {
        view.product.reviews().add(newReview);
        // window.scrollTo(0,document.body.scrollHeight);
        $("#flash-errors-for-reviews").html("Your review has been successfully posted and saved above.");
      },

      error: function () {
        $("#flash-errors-for-reviews").html("Please <a href='#session/new'>sign in</a> to ask a question.");
      }
    });
  }
});
