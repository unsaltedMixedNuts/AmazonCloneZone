AmazonCloneZone.Models.Answer = Backbone.Model.extend({
  urlRoot: "/api/answers",

  creationDate: function () {
    var creationDateInSeconds = parseInt(this.escape("created_at_seconds"));
    var jsDate =  new Date(creationDateInSeconds);
    var displayDate = this.parseIntoDate(jsDate)

    if (this.escape("created_at_seconds")) {
      return displayDate
    } else {
      return this.parseIntoDate(new Date());
    }
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
  }});
