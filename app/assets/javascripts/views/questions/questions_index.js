AmazonCloneZone.Views.QuestionsIndex = Backbone.View.extend({
  template: JST["questions/index"],

  events: {
    "submit .ask-question-form": "submitNewQuestion",
    "click .question": "inputAnswerForm",
    "submit .answer-question-form": "submitNewAnswer"
  },

  initialize: function (options) {
    this.product = options.product;
    this.listenTo(this.product.questions(), "add", this.render);
  },

  render: function () {
    var content = this.template({ product: this.product });
    this.$el.html(content);
    return this;
  },

  submitNewAnswer: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();

    if (params.answer.body === "") {
      $(".flash-errors-for-answers").html("Please enter an answer below to the question above.");
      return;
    }

    var newAnswer = new AmazonCloneZone.Models.Answer(params.answer);
    var view = this;
    var questionId = parseInt(params.answer.question_id);

    newAnswer.save([], {
      success: function () {
        view.product.questions().get(questionId).answers().add(newAnswer);
        view.render();
        $(".flash-errors-for-answers").html("Your answer has been posted for others to see.");
      },

      error: function () {
        $(".flash-errors-for-answers").html("Please <a href='#session/new'>sign in</a> to answer a question.");
      }
    });
  },

  submitNewQuestion: function (event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON()["question"];

    if (params.body === "") {
      $("#flash-errors-for-questions").html("Please enter a question.");
      return;
    }

    var newQuestion = new AmazonCloneZone.Models.Question(params);
    var view = this;
    newQuestion.save([], {
      success: function () {
        view.product.questions().unshift(newQuestion);
        $("#flash-errors-for-questions").html("Your question has been posted for others to answer.");
      },

      error: function () {
        $("#flash-errors-for-questions").html("Please <a href='#session/new'>sign in</a> to ask a question.");
      }
    });
  },

  inputAnswerForm: function (event) {
    event.preventDefault();
    this.render();

    var questionId = parseInt(event.toElement.id);
    var content = JST["answers/create"]({ q: this.product.questions().get(questionId) });
    $("#answer-form-" + event.currentTarget.id).html(content);
  }
});
