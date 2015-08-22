AmazonCloneZone.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "":"productsIndex",
    "products/:id": "productsShow",
    "session/new": "signIn"
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
