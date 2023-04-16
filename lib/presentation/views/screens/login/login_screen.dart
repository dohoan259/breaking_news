import 'package:breaking_news/presentation/views/screens/state/validate_model.dart';
import 'package:breaking_news/presentation/views/widgets/AppTextField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../base/base_screen.dart';
import 'login_controller.dart';
import 'login_state.dart';

class LoginScreen extends BaseScreen<LoginController, LoginState> {
  LoginScreen({Key? key}) : super(key: key);

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void onInitState(BuildContext context) {
    _userNameController.text = '';
    super.onInitState(context);
  }

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'.tr())),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30),
            Selector<LoginState, Tuple2<ValidateModel<String?>, bool?>>(
              builder: (_, data, __) {
                _userNameController.text = data.item1.value ?? '';
                return TextFormField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                    errorText: data.item2 == true ? 'test error' : null,
                    labelText: 'label',
                    errorStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                    ),
                  ),
                );
              },
              selector: (_, state) => Tuple2(
                state.username,
                state.errorMap[state.username.identity],
              ),
            ),
            SizedBox(height: 16),
            Selector<LoginState, Tuple2<ValidateModel<String?>, bool?>>(
              builder: (_, data, __) {
                _userNameController.text = data.item1.value ?? '';
                return AppTextField(
                  labelText: '',
                  error: data.item2 == true ? 'test error' : null,
                  controller: _passwordController,
                  onChanged: (value) {
                    context.read<LoginController>().updatePassword(value);
                  },
                );
              },
              selector: (_, state) => Tuple2(
                state.username,
                state.errorMap[state.password.identity],
              ),
            ),
            SizedBox(height: 60),
            TextButton(
              onPressed: () {
                context.read<LoginController>().login();
              },
              child: Text('login'),
            ),
            TextButton(
              onPressed: () {
                context.read<LoginController>().login1();
              },
              child: Text('login1'),
            ),
            TextButton(
              onPressed: () {
                context.read<LoginController>().onErrorHandled();
              },
              child: Text('Handle Error'),
            ),
          ],
        ),
      ),
    );
  }
}
