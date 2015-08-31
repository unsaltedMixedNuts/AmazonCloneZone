AmazonCloneZone.Models.Order = Backbone.Model.extend({
  urlRoot: "/api/orders",

  creationDate: function () {
    // return "creationDate goes here"
    var creationDateInSeconds = parseInt(this.escape("created_at_seconds"));
    var jsDate =  new Date(creationDateInSeconds);
    var displayDate = this.parseIntoDate(jsDate)
    var displayTime = this.parseIntoTime(jsDate);
    return displayDate + " at " + displayTime;
  },

  estimatedDeliveryDate: function () {
    var months = [
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ];
    var days = [
      "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ];

    var orderDate = new Date(parseInt(this.escape("created_at_seconds")));
    var numberOfDaysToAdd = 2;
    var result = orderDate.setDate(orderDate.getDate() + numberOfDaysToAdd);

    var dd = orderDate.getDate();
    var mm = orderDate.getMonth() + 1;
    var y = orderDate.getFullYear();
    var formattedDate = months[orderDate.getMonth()] + " " + dd + ", " + y;

    return formattedDate;
  },

  parseIntoDate: function (date) {
    var months = [
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ];
    var days = [
      "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ];

    var dd = date.getDate();
    var mm = date.getMonth() + 1;
    var y = date.getFullYear();
    var formattedDate = months[date.getMonth()] + " " + dd + ", " + y;

    return formattedDate;
  },

  parseIntoTime: function (date) {
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0'+minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    // return date.getMonth()+1 + "/" + date.getDate() + "/" + date.getFullYear() + "  " + strTime;
    return strTime;
  }
});
