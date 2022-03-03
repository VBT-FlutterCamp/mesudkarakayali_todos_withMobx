import 'package:vexana/vexana.dart';

class TodosModel extends INetworkModel {
    TodosModel({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    int? userId;
    int? id;
    String? title;
    bool? completed;

    // factory Todos.fromJson(Map<String, dynamic> json) => Todos(
    //     userId: json["userId"],
    //     id: json["id"],
    //     title: json["title"],
    //     completed: json["completed"],
    // );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };

  @override
  fromJson(Map<String, dynamic> json) {
 
    return TodosModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );
  }
}
