window.AmazonCloneZone = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function () {
    new AmazonCloneZone.Routers.Router();
    Backbone.history.start();
  }
};
