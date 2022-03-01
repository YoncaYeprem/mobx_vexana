import 'package:login_with_mobx/feature/login/model/user_req_model.dart';
import 'package:login_with_mobx/feature/login/model/user_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class IUserServices{
  final INetworkManager networkManager;

  IUserServices(this.networkManager);
  Future<UserResponseModel?> login(UserRequestModel requestModel);
}

class UserServices extends IUserServices{
  UserServices(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserResponseModel?> login(UserRequestModel requestModel) async{
    
    final response=await networkManager.send<UserResponseModel,UserResponseModel>("https://reqres.in/api/login", parseModel: UserResponseModel(), 
    data: requestModel,
    method:RequestType.POST);
    return response.data;
  }

}