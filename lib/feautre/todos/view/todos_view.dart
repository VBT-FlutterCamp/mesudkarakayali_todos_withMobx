import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxsample/core/constants/strings/todosStrings.dart';
import '../../../core/base/base_view.dart';
import '../viewmodel/todo_view_model.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<TodoViewModel>(
      viewModel: TodoViewModel(),
      onModelReady: (model) {
        model.init();
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, TodoViewModel viewModel) =>
          Scaffold(
              appBar: AppBar(title: Text(TodosString.title)),
              body: Observer(builder: (_) {
                return viewModel.isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: viewModel.todoList?.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool? complated =
                              viewModel.todoList?[index].completed;
                          return _lineCard(viewModel, index, complated);
                        },
                      );
              })),
    );
  }




  Card _lineCard(TodoViewModel viewModel, int index, bool? complated) {
    return Card(
                            child: ListTile(
                          title: Text(viewModel.todoList?[index].title ?? ''),
                          subtitle: Text(
                              viewModel.todoList?[index].id.toString() ?? ""),
                          trailing: complated == true
                              ? Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                        ));
  }
}
