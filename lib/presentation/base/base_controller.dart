import 'package:state_notifier/state_notifier.dart';

import '../../domain/entities/error_entity.dart';
import 'base_state.dart';

abstract class BaseController<S extends BaseState> extends StateNotifier<S>
    with LocatorMixin {
  BaseController(S state) : super(state);

  Future<ErrorEntity?> loadData();

  Future<void> reload() async {}

  void handleError(ErrorEntity errorEntity) {
    state = state.copyWith(errorEntity: errorEntity) as S;
    if (errorEntity is ValidationException) {
      var errorMap = <String, bool?>{};
      errorMap[errorEntity.model.identity] = true;
      state = state.copyWith(errorMap: errorMap) as S;
    }
  }

  void onErrorHandled() {
    var errorMap = <String, bool?>{};
    state = state.copyWith(errorEntity: null, errorMap: errorMap) as S;
  }
}
