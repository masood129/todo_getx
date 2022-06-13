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

   Map<String, String> toJson() => {
        'title': title!,
        'description': description!,
      };

  static List<TodoModel> listFromJson(List data)=>
      data.map((e) => TodoModel.fromJson(e)).toList();


}
