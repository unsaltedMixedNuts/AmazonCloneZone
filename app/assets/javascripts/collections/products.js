AmazonCloneZone.Collections.Products = Backbone.Collection.extend({
  model: AmazonCloneZone.Models.Product,
  url: "/api/products"
});

AmazonCloneZone.Collections.products = new AmazonCloneZone.Collections.Products();
