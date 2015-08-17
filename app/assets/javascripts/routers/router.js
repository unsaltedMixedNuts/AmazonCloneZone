AmazonCloneZone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $("#backbone-section");
  },

  routes: {
    "":"productsIndex",
    "products/:id": "productsShow"
  },

  productsIndex: function () {
    AmazonCloneZone.Collections.products.fetch();
    var view = new AmazonCloneZone.Views.ProductsIndex({ collection: AmazonCloneZone.Collections.products})
    this._swapView(view);
  },

  productsShow: function (id) {
    var model = AmazonCloneZone.Collections.products.getOrFetch(id);
    var view = new AmazonCloneZone.Views.ProductShow({ model: model });
    this._swapView(view);
  },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
