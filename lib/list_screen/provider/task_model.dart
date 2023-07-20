import 'package:flutter/cupertino.dart';

final tasksList = List.generate(
  20,
  (index) => Task(
    title: "Title №$index",
    description: "Description №$index",
  ),
);

final imageTasksList = [
  const Task(
    title: "Image №1",
    description: "Description №1",
    imageUrl:
        "https://img.freepik.com/free-photo/mountains-lake_1398-1150.jpg?w=1380&t=st=1689781991~exp=1689782591~hmac=6327546a055c28339e4f7a2f3f42fc4589456f672fd3e06b8fd72fa7cd65553b",
  ),
  const Task(
      title: "Image №2",
      description: "Description №2",
      imageUrl: "https://klike.net/uploads/posts/2019-06/1559455754_1.jpg"),
  const Task(
    title: "Image №3",
    description: "Description №3",
    imageUrl: "https://klike.net/uploads/posts/2019-06/medium/1559455790_5.jpg",
  )
];

final longTasksList = List.generate(
  10,
  (index) => Task(
    title: "№$index long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text",
    description: "№$index long description long description long description long description long description long description long description long description long description long description long description long description long description long description",
  ),
);


class Task {
  final String title;
  final String description;
  final String? imageUrl;

  const Task({required this.title, required this.description, this.imageUrl});
}

class TaskModel extends ChangeNotifier {
  List<Task> _currentTasks = tasksList;

  List<Task> get currentTasks => _currentTasks;

  void showTasks() {
    _currentTasks = tasksList;
    notifyListeners();
  }

  void showImageTasks() {
    _currentTasks = imageTasksList;
    notifyListeners();
  }

  void showLongTasks() {
    _currentTasks = longTasksList;
    notifyListeners();
  }
}
