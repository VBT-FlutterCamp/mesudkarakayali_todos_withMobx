import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobxsample/core/base/base_view_model.dart';
import 'package:mobxsample/feautre/todos/model/todos_model.dart';
import 'package:mobxsample/feautre/todos/service/todos_service.dart';
part 'todo_view_model.g.dart';

class TodoViewModel = _TodoViewModelBase with _$TodoViewModel;

abstract class _TodoViewModelBase with Store,BaseViewModel {
  late ITodoService todoService;
  
  @observable
  List<TodosModel>? todoList;

  @observable
  bool isLoading=false;

  @action
  changeLoading()async{
    
    isLoading!=isLoading;
  
  }
  @action
  getTodo()async{
    changeLoading();
    todoList= await todoService.todoFetch();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  
  void init() {
    todoService=TodoService(networkManager);
    getTodo();
    

  }

  


}