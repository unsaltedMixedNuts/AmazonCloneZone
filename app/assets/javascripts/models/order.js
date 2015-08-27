AmazonCloneZone.Models.Order = Backbone.Model.extend({
  urlRoot: "/api/orders",

  creationDate: function () {
    return "creationDate goes here"
  },

  estimatedDeliveryDate: function () {
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
    var formattedDate = months[date.getMonth()] + " " + dd + ", " + y;

    return formattedDate;
  }
});
