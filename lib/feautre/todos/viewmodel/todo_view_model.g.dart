// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoViewModel on _TodoViewModelBase, Store {
  final _$todoListAtom = Atom(name: '_TodoViewModelBase.todoList');

  @override
  List<TodosModel>? get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(List<TodosModel>? value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_TodoViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$changeLoadingAsyncAction =
      AsyncAction('_TodoViewModelBase.changeLoading');

  @override
  Future changeLoading() {
    return _$changeLoadingAsyncAction.run(() => super.changeLoading());
  }

  final _$getTodoAsyncAction = AsyncAction('_TodoViewModelBase.getTodo');

  @override
  Future getTodo() {
    return _$getTodoAsyncAction.run(() => super.getTodo());
  }

  @override
  String toString() {
    return '''
todoList: ${todoList},
isLoading: ${isLoading}
    ''';
  }
}
