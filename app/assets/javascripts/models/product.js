AmazonCloneZone.Models.Product = Backbone.Model.extend({
  urlRoot: "/api/products",

  averageStars: function () {
    var numOfReviews = this.reviews().length;

    if (numOfReviews == 0) {
      return "Be the first to review this item";
    }

    var totalStars = 0.0;
    this.reviews().each(function (review) {
      totalStars += review.get("stars");
    })

    var averageStars = (totalStars / numOfReviews);
    return averageStars;
    // return "[AVERAGE STARS HERE]";
  },

  deliveryEstimate: function () {
    var months = [
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ];
    var days = [
      "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ];

    var date = new Date();
    var numberOfDaysToAdd = 2;
    var result = date.setDate(date.getDate() + numberOfDaysToAdd);

    var dd = date.getDate();
    var mm = date.getMonth() + 1;
    var y = date.getFullYear();
    var formattedDate = days[date.getDay()].toUpperCase() + ", " + months[date.getMonth()] + " " + dd;

    return formattedDate;
  },

  descriptions: function (description) {
    if (description) {
      if (this._descriptions) {
        this._descriptions.push(description);
      } else {
        this._descriptions = [description];
      }

      return this._descriptions;
    } else {
      return this._descriptions || [];
    }
  },

  flashErrors: function () {
    return "flash errors here"
  },

  images: function () {
    if (this.attributes.image_urls) {
      return this.get("image_urls");
    } else {
      return [];
    }
  },

  parse: function (response) {
    if (response.descriptions) {
      var length = response.descriptions.length;
      for (var index = 0; index < length; index++) {
        var description = response.descriptions[index];
        this.descriptions(description);
      }
    }

    if (response.reviews) {
      this.reviews().set(response.reviews);
      delete response.reviews;
    }

    return response;
  },

  price: function () {
    if (this.attributes.sales_price) {
      var indexOfDecimal = this.escape("sales_price").indexOf(".");
      var indexOfLastItem = this.escape("sales_price").length - 1;
      if ( indexOfLastItem - indexOfDecimal != 2) {
        return this.escape("sales_price").toString() + "0";
      } else {
        return this.escape("sales_price");
      }
    }
  },

  questions: function () {
    return [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9]
  },

  reviews: function () {
    if (!this._reviews) {
      this._reviews = new AmazonCloneZone.Collections.Reviews();
    }

    return this._reviews;

    // return ["reviews"];
  },

  specifications: function () {
    return ["spec_1", "spec_2"];
  }
});
