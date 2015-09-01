AmazonCloneZone.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.$headerEl = options.$headerEl;
    this.$footerEl = options.$footerEl;
  },

  routes: {
    "":"productsIndex",
    "products/:id": "productsShow",
    "session/new": "signIn",
    "users/new": "newUser",
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

  newUser: function (callback) {
    if (!this._requireSignedOut()) { return; }
    var model = new AmazonCloneZone.Models.User();
    var view = new AmazonCloneZone.Views.UsersCreate({ model: model, callback: callback });
    this._swapView(view, false, false);
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
    this._swapView(signInView, false, false);
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

  _swapView: function (view, headerValue, footerValue) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
    this._inputHeaderAndFooter(headerValue, footerValue)
  },

  _inputHeaderAndFooter: function (headerValue, footerValue) {
    if (headerValue === undefined) {
      headerValue = true;
    }

    if (footerValue === undefined) {
      footerValue = true;
    }

    if (headerValue) {
      AmazonCloneZone.header.render();
    } else {
      this.$headerEl.empty();
    }

    if (footerValue) {
      AmazonCloneZone.footer.render();
    } else {
      this.$footerEl.empty();
    }
  }
});
