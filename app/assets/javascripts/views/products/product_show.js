AmazonCloneZone.Views.ProductShow = Backbone.View.extend({
  template: JST["products/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  events: {
    "submit #cart-form": "addToCart"
  },

  addToCart: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON().item;
    var cartedItem = new AmazonCloneZone.Models.CartedItem(params);
    var view = this;
    cartedItem.save([], {
      success: function () {
        Backbone.history.navigate("#cart", { trigger: true });
      }
    });
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
