//server modhe lot of questions
class Survey {
  final String? id;
  final String title;
  final String description;
  final List<Question> questions;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String createdBy;
  final bool isActive;

  Survey({
    this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    this.isActive = true,
  });


  class Question {
  final String id;
  final String text;
  final QuestionType type;
  final List<String> options;
  final bool isRequired;

  Question({
  required this.id,
  required this.text,
  required this.type,
  this.options = const [],
  this.isRequired = true,
  });

  enum QuestionType { text, multipleChoice, singleChoice, rating, yesNo }
  class SurveyResponse {
  final String? id;
  final String surveyId;
  final String respondentName;
  final String respondentEmail;
  final List<Answer> answers;
  final DateTime submittedAt;

  SurveyResponse({
  this.id,
  required this.surveyId,
  required this.respondentName,
  required this.respondentEmail,
  required this.answers,
  required this.submittedAt,
  });

  class Answer {
  final String questionId;
  final String text;
  final List<String> selectedOptions;
  final int rating;

  Answer({
  required this.questionId,
  this.text = '',
  this.selectedOptions = const [],
  this.rating = 0,
  });