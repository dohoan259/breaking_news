import 'package:dart_mappable/dart_mappable.dart';

import '../../../../domain/entities/error_entity.dart';
import '../../../base/base_state.dart';

part 'home_state.mapper.dart';

@MappableClass()
class HomeState extends BaseState with HomeStateMappable {
  HomeState({
    Map<String, bool?> errorMap = const <String, bool?>{},
    ErrorEntity? errorEntity = null,
    bool processing = false,
    ScreenStatus screenStatus = ScreenStatus.uninitialized,
  }) : super(
          errorMap: errorMap,
          errorEntity: errorEntity,
          processing: processing,
          screenStatus: screenStatus,
        );
}
