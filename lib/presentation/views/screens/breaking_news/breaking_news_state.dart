import 'package:breaking_news/domain/entities/error_entity.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../../../base/base_state.dart';

part 'breaking_news_state.mapper.dart';

@MappableClass()
class BreakingNewsState extends BaseState with BreakingNewsStateMappable {
  BreakingNewsState({
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
