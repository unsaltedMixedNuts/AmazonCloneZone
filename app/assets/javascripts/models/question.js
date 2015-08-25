AmazonCloneZone.Models.Question = Backbone.Model.extend({
  urlRoot: "/api/questions",

  answers: function () {
    if (!this._answers) {
      this._answers = new AmazonCloneZone.Collections.Answers();
    }

    return this._answers;
  },

  parse: function (response) {
    // ----------ANSWERS----------
    if (response.answers) {
      this.answers().set(response.answers);
      delete response.answers;
    }
  }
});
