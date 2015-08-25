AmazonCloneZone.Collections.Orders = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Order,
  url: "/api/orders"
});
