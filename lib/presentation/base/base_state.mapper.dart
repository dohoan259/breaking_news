// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'base_state.dart';

class BaseStateMapper extends MapperBase<BaseState> {
  static MapperContainer container = MapperContainer(
    mappers: {BaseStateMapper()},
  );

  @override
  BaseStateMapperElement createElement(MapperContainer container) {
    return BaseStateMapperElement._(this, container);
  }

  @override
  String get id => 'BaseState';

  static final fromMap = container.fromMap<BaseState>;
  static final fromJson = container.fromJson<BaseState>;
}

class BaseStateMapperElement extends MapperElementBase<BaseState> {
  BaseStateMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  BaseState decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  BaseState fromMap(Map<String, dynamic> map) => BaseState(
      screenStatus:
          container.$getOpt(map, 'screenStatus') ?? ScreenStatus.uninitialized,
      processing: container.$getOpt(map, 'processing') ?? false,
      errorEntity: container.$getOpt(map, 'errorEntity'),
      errorMap: container.$getOpt(map, 'errorMap') ?? const <String, bool?>{});

  @override
  Function get encoder => encode;
  dynamic encode(BaseState v) => toMap(v);
  Map<String, dynamic> toMap(BaseState b) => {
        'screenStatus': container.$enc(b.screenStatus, 'screenStatus'),
        'processing': container.$enc(b.processing, 'processing'),
        'errorEntity': container.$enc(b.errorEntity, 'errorEntity'),
        'errorMap': container.$enc(b.errorMap, 'errorMap')
      };

  @override
  String stringify(BaseState self) =>
      'BaseState(screenStatus: ${container.asString(self.screenStatus)}, processing: ${container.asString(self.processing)}, errorEntity: ${container.asString(self.errorEntity)}, errorMap: ${container.asString(self.errorMap)})';
  @override
  int hash(BaseState self) =>
      container.hash(self.screenStatus) ^
      container.hash(self.processing) ^
      container.hash(self.errorEntity) ^
      container.hash(self.errorMap);
  @override
  bool equals(BaseState self, BaseState other) =>
      container.isEqual(self.screenStatus, other.screenStatus) &&
      container.isEqual(self.processing, other.processing) &&
      container.isEqual(self.errorEntity, other.errorEntity) &&
      container.isEqual(self.errorMap, other.errorMap);
}

mixin BaseStateMappable {
  String toJson() => BaseStateMapper.container.toJson(this as BaseState);
  Map<String, dynamic> toMap() =>
      BaseStateMapper.container.toMap(this as BaseState);
  BaseStateCopyWith<BaseState, BaseState, BaseState> get copyWith =>
      _BaseStateCopyWithImpl(this as BaseState, $identity, $identity);
  @override
  String toString() => BaseStateMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BaseStateMapper.container.isEqual(this, other));
  @override
  int get hashCode => BaseStateMapper.container.hash(this);
}

extension BaseStateValueCopy<$R, $Out extends BaseState>
    on ObjectCopyWith<$R, BaseState, $Out> {
  BaseStateCopyWith<$R, BaseState, $Out> get asBaseState =>
      base.as((v, t, t2) => _BaseStateCopyWithImpl(v, t, t2));
}

typedef BaseStateCopyWithBound = BaseState;

abstract class BaseStateCopyWith<$R, $In extends BaseState,
    $Out extends BaseState> implements ObjectCopyWith<$R, $In, $Out> {
  BaseStateCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends BaseState>(
      Then<BaseState, $Out2> t, Then<$Out2, $R2> t2);
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap;
  $R call(
      {ScreenStatus? screenStatus,
      bool? processing,
      ErrorEntity? errorEntity,
      Map<String, bool?>? errorMap});
}

class _BaseStateCopyWithImpl<$R, $Out extends BaseState>
    extends CopyWithBase<$R, BaseState, $Out>
    implements BaseStateCopyWith<$R, BaseState, $Out> {
  _BaseStateCopyWithImpl(super.value, super.then, super.then2);
  @override
  BaseStateCopyWith<$R2, BaseState, $Out2> chain<$R2, $Out2 extends BaseState>(
          Then<BaseState, $Out2> t, Then<$Out2, $R2> t2) =>
      _BaseStateCopyWithImpl($value, t, t2);

  @override
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap => MapCopyWith($value.errorMap,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(errorMap: v));
  @override
  $R call(
          {ScreenStatus? screenStatus,
          bool? processing,
          Object? errorEntity = $none,
          Map<String, bool?>? errorMap}) =>
      $then(BaseState(
          screenStatus: screenStatus ?? $value.screenStatus,
          processing: processing ?? $value.processing,
          errorEntity: or(errorEntity, $value.errorEntity),
          errorMap: errorMap ?? $value.errorMap));
}
