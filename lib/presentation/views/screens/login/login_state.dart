import 'package:breaking_news/presentation/views/screens/state/validate_model.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../../../../domain/entities/error_entity.dart';
import '../../../base/base_state.dart';

part 'login_state.mapper.dart';

@MappableClass()
class LoginState extends BaseState with LoginStateMappable {
  final ValidateModel<String?> username;
  final ValidateModel<String?> password;

  LoginState({
    Map<String, bool?> errorMap = const <String, bool?>{},
    ErrorEntity? errorEntity = null,
    bool processing = false,
    ScreenStatus screenStatus = ScreenStatus.uninitialized,
    this.username =
        const ValidateModel<String?>(identity: 'username', value: null),
    this.password =
        const ValidateModel<String?>(identity: 'password', value: null),
  }) : super(
          errorMap: errorMap,
          errorEntity: errorEntity,
          processing: processing,
          screenStatus: screenStatus,
        );
}
