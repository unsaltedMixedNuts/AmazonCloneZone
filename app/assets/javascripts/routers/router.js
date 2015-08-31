AmazonCloneZone.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "":"productsIndex",
    "products/:id": "productsShow",
    "session/new": "signIn",
    "users/new": "new",
    "cart": "cartShow",
    "checkout": "checkout",
    "orders": "ordersIndex",
    "orders/:id": "orderShow"
    // ":invalidFragmentedUrl": "productsIndex"
  },

  cartShow: function () {
    AmazonCloneZone.cart.fetch();
    var view = new AmazonCloneZone.Views.CartShow({ model: AmazonCloneZone.cart });
    this._swapView(view);
  },

  checkout: function () {
    AmazonCloneZone.cart.fetch();
    var view = new AmazonCloneZone.Views.Checkout({ model: AmazonCloneZone.cart });
    this._swapView(view);
  },

  new: function () {
    if (!this._requireSignedOut()) { return; }
    var model = new AmazonCloneZone.Models.User();
    var view = new AmazonCloneZone.Views.UsersCreate({ model: model });
    this._swapView(view);
  },

  ordersIndex: function () {
    AmazonCloneZone.Collections.orders.fetch();
    var view = new AmazonCloneZone.Views.OrdersIndex({ collection: AmazonCloneZone.Collections.orders });
    this._swapView(view);
  },

  orderShow: function (id) {
    var order = AmazonCloneZone.Collections.orders.getOrFetch(id);
    order.fetch();
    var view = new AmazonCloneZone.Views.OrderShow({ model: order });
    this._swapView(view);
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

  signIn: function(callback){
    if (!this._requireSignedOut(callback)) { return; }

    var signInView = new AmazonCloneZone.Views.SignIn({
      callback: callback
    });
    this._swapView(signInView);
  },

  _requireSignedIn: function(callback){
    if (!AmazonCloneZone.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      this.signIn(callback);
      return false;
    }

    return true;
  },

  _requireSignedOut: function(callback){
    if (AmazonCloneZone.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      callback();
      return false;
    }

    return true;
  },

  _goHome: function(){
    Backbone.history.navigate("", { trigger: true });
  },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
