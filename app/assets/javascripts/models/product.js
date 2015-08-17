AmazonCloneZone.Models.Product = Backbone.Model.extend({
  urlRoot: "/api/products",

  averageStars: function () {
    return "[AVERAGE STARS HERE]";
  },

  brand: function () {
    return "[BRAND NAME HERE]";
  },

  deliveryEstimate: function () {
    return "[DELIVERY ESTIMATE HERE]"
  },

  descriptions: function () {
    return ["description_1", "description_2"]
  },

  flashErrors: function () {
    return "flash errors here"
  },

  images: function () {
    return ["image_1", "image_2"];
  },
  // 
  // parse: function (jsonResp) {
  //   if (jsonResp.brand) {
  //     this.brand
  //   }
  //
  //   return jsonResp;
  // },

  price: function () {
    return "[PRICE GOES HERE]";
  },

  questions: function () {
    return ["question_1", "question_2"]
  },

  reviews: function () {
    return ["review_1", "review_2"];
  },

  specifications: function () {
    return ["spec_1", "spec_2"];
  }
});
