import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:login_with_mobx/core/base/base_viewmodel.dart';
import 'package:login_with_mobx/feature/home/view/home_view.dart';
import 'package:login_with_mobx/feature/login/model/user_req_model.dart';
import 'package:login_with_mobx/feature/login/model/user_response_model.dart';
import 'package:login_with_mobx/feature/login/service/user_services.dart';
import 'package:login_with_mobx/feature/pokemon/view/pokemon_view.dart';
import 'package:mobx/mobx.dart';
part 'user_viewmodel.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store, BaseViewModel {

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailNode =FocusNode();
  final FocusNode passwordNode =FocusNode();

  late IUserServices userServices;

  @observable
  UserResponseModel? userResponseModel;

  @observable
  bool isAuthenticate = false;

  @action
  void changeAuth(){
    isAuthenticate = !isAuthenticate;
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    userServices = UserServices(networkManager);
  }

  @action
  Future<UserResponseModel?> login(UserRequestModel userRequestModel) async {
    
    userResponseModel = await userServices.login(userRequestModel);
    userResponseModel == null ?  null : changeAuth();

    isAuthenticate ? context.navigateToPage(PokemonView()) : null;
  }
}
