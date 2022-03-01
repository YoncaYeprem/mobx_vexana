import 'package:flutter/material.dart';
import 'package:login_with_mobx/core/base/base_view.dart';
import 'package:login_with_mobx/feature/login/model/user_req_model.dart';
import 'package:login_with_mobx/product/widget/custom_text_form_field.dart';

import '../viewmodel/user_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
        viewModel: UserViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, UserViewModel userViewModel) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/login_logo.png'),
                  Form(
                    child: Column(
                      children: [
                        CustomTextFormField(
                            textController: userViewModel.emailController,
                            textInputType: TextInputType.emailAddress,
                            labelText: 'Email',
                            focusNode: userViewModel.emailNode),
                        CustomTextFormField(
                            textController: userViewModel.passwordController,
                            textInputType: TextInputType.text,
                            labelText: 'Password',
                            focusNode: userViewModel.passwordNode),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                    final resp = userViewModel.login(
                      UserRequestModel(
                        email: userViewModel.emailController.text,
                        password: userViewModel.passwordController.text
                      )
                    );
                    print(resp);
                  }, child: Text("LOGIN"))
                ],
              ),
            )),
          );
        });
  }
}
