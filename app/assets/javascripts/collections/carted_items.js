AmazonCloneZone.Collections.CartedItem = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.CartedItem,
  url: "/api/carted_items"
});
