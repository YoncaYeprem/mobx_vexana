// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$userResponseModelAtom =
      Atom(name: '_UserViewModelBase.userResponseModel');

  @override
  UserResponseModel? get userResponseModel {
    _$userResponseModelAtom.reportRead();
    return super.userResponseModel;
  }

  @override
  set userResponseModel(UserResponseModel? value) {
    _$userResponseModelAtom.reportWrite(value, super.userResponseModel, () {
      super.userResponseModel = value;
    });
  }

  final _$isAuthenticateAtom = Atom(name: '_UserViewModelBase.isAuthenticate');

  @override
  bool get isAuthenticate {
    _$isAuthenticateAtom.reportRead();
    return super.isAuthenticate;
  }

  @override
  set isAuthenticate(bool value) {
    _$isAuthenticateAtom.reportWrite(value, super.isAuthenticate, () {
      super.isAuthenticate = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_UserViewModelBase.login');

  @override
  Future<UserResponseModel?> login(UserRequestModel userRequestModel) {
    return _$loginAsyncAction.run(() => super.login(userRequestModel));
  }

  final _$_UserViewModelBaseActionController =
      ActionController(name: '_UserViewModelBase');

  @override
  void changeAuth() {
    final _$actionInfo = _$_UserViewModelBaseActionController.startAction(
        name: '_UserViewModelBase.changeAuth');
    try {
      return super.changeAuth();
    } finally {
      _$_UserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userResponseModel: ${userResponseModel},
isAuthenticate: ${isAuthenticate}
    ''';
  }
}
