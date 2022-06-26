class TodoModel {
  TodoModel({
    this.title,
    this.description,
  });

  final String? title;
  final String? description;

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        title: json['title'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }
}
