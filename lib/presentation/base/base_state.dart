import 'package:dart_mappable/dart_mappable.dart';

import '../../domain/entities/error_entity.dart';

part 'base_state.mapper.dart';

@MappableClass()
class BaseState with BaseStateMappable {
  final ScreenStatus screenStatus;
  final bool processing;
  final ErrorEntity? errorEntity;
  final Map<String, bool?> errorMap;

  const BaseState({
    this.screenStatus = ScreenStatus.uninitialized,
    this.processing = false,
    this.errorEntity = null,
    this.errorMap = const <String, bool?>{},
  });
}

enum ScreenStatus { uninitialized, loaded, failed }
