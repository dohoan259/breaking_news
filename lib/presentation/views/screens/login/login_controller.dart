import 'package:breaking_news/presentation/views/screens/state/validate_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/error_entity.dart';
import '../../../base/base_controller.dart';
import '../../../base/base_state.dart';
import 'login_state.dart';

@injectable
class LoginController extends BaseController<LoginState> {
  LoginController() : super(LoginState());

  @override
  Future<ErrorEntity?> loadData() async {
    state = state.copyWith(screenStatus: ScreenStatus.loaded);
    return null;
  }

  Future<void> login() async {
    // todo: get exception from use case
    final error = ValidationException(
      model: ValidateModel<String?>(identity: 'username', value: ''),
      title: 'title',
      message: 'message',
    );
    handleError(error);
  }

  Future<void> login1() async {
    final error = ValidationException(
      model: ValidateModel<String?>(identity: 'password', value: ''),
      title: 'title',
      message: 'message',
    );
    handleError(error);
  }

  void updatePassword(String value) {}
}
