import 'package:vexana/vexana.dart';

import '../model/todos_model.dart';

abstract class ITodoService {
  final INetworkManager networkManager;

  ITodoService(this.networkManager);
  Future<List<TodosModel>?> todoFetch();

}

class TodoService extends ITodoService{
  TodoService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<TodosModel>?> todoFetch()async {
    var response = await networkManager.send<TodosModel,List<TodosModel>>('todos', parseModel: TodosModel(), method: RequestType.GET);
    return  response.data;
  }


  
}