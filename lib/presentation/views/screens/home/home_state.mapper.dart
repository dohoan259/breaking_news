// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'home_state.dart';

class HomeStateMapper extends MapperBase<HomeState> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {HomeStateMapper()},
      ))
        ..linkAll({BaseStateMapper.container}));

  @override
  HomeStateMapperElement createElement(MapperContainer container) {
    return HomeStateMapperElement._(this, container);
  }

  @override
  String get id => 'HomeState';

  static final fromMap = container.fromMap<HomeState>;
  static final fromJson = container.fromJson<HomeState>;
}

class HomeStateMapperElement extends MapperElementBase<HomeState> {
  HomeStateMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  HomeState decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  HomeState fromMap(Map<String, dynamic> map) => HomeState(
      errorMap: container.$getOpt(map, 'errorMap') ?? const <String, bool?>{},
      errorEntity: container.$getOpt(map, 'errorEntity'),
      processing: container.$getOpt(map, 'processing') ?? false,
      screenStatus:
          container.$getOpt(map, 'screenStatus') ?? ScreenStatus.uninitialized);

  @override
  Function get encoder => encode;
  dynamic encode(HomeState v) => toMap(v);
  Map<String, dynamic> toMap(HomeState h) => {
        'errorMap': container.$enc(h.errorMap, 'errorMap'),
        'errorEntity': container.$enc(h.errorEntity, 'errorEntity'),
        'processing': container.$enc(h.processing, 'processing'),
        'screenStatus': container.$enc(h.screenStatus, 'screenStatus')
      };

  @override
  String stringify(HomeState self) =>
      'HomeState(screenStatus: ${container.asString(self.screenStatus)}, processing: ${container.asString(self.processing)}, errorEntity: ${container.asString(self.errorEntity)}, errorMap: ${container.asString(self.errorMap)})';
  @override
  int hash(HomeState self) =>
      container.hash(self.screenStatus) ^
      container.hash(self.processing) ^
      container.hash(self.errorEntity) ^
      container.hash(self.errorMap);
  @override
  bool equals(HomeState self, HomeState other) =>
      container.isEqual(self.screenStatus, other.screenStatus) &&
      container.isEqual(self.processing, other.processing) &&
      container.isEqual(self.errorEntity, other.errorEntity) &&
      container.isEqual(self.errorMap, other.errorMap);
}

mixin HomeStateMappable {
  String toJson() => HomeStateMapper.container.toJson(this as HomeState);
  Map<String, dynamic> toMap() =>
      HomeStateMapper.container.toMap(this as HomeState);
  HomeStateCopyWith<HomeState, HomeState, HomeState> get copyWith =>
      _HomeStateCopyWithImpl(this as HomeState, $identity, $identity);
  @override
  String toString() => HomeStateMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          HomeStateMapper.container.isEqual(this, other));
  @override
  int get hashCode => HomeStateMapper.container.hash(this);
}

extension HomeStateValueCopy<$R, $Out extends BaseState>
    on ObjectCopyWith<$R, HomeState, $Out> {
  HomeStateCopyWith<$R, HomeState, $Out> get asHomeState =>
      base.as((v, t, t2) => _HomeStateCopyWithImpl(v, t, t2));
}

typedef HomeStateCopyWithBound = BaseState;

abstract class HomeStateCopyWith<$R, $In extends HomeState,
    $Out extends BaseState> implements BaseStateCopyWith<$R, $In, $Out> {
  HomeStateCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends BaseState>(
      Then<HomeState, $Out2> t, Then<$Out2, $R2> t2);
  @override
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap;
  @override
  $R call(
      {Map<String, bool?>? errorMap,
      ErrorEntity? errorEntity,
      bool? processing,
      ScreenStatus? screenStatus});
}

class _HomeStateCopyWithImpl<$R, $Out extends BaseState>
    extends CopyWithBase<$R, HomeState, $Out>
    implements HomeStateCopyWith<$R, HomeState, $Out> {
  _HomeStateCopyWithImpl(super.value, super.then, super.then2);
  @override
  HomeStateCopyWith<$R2, HomeState, $Out2> chain<$R2, $Out2 extends BaseState>(
          Then<HomeState, $Out2> t, Then<$Out2, $R2> t2) =>
      _HomeStateCopyWithImpl($value, t, t2);

  @override
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap => MapCopyWith($value.errorMap,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(errorMap: v));
  @override
  $R call(
          {Map<String, bool?>? errorMap,
          Object? errorEntity = $none,
          bool? processing,
          ScreenStatus? screenStatus}) =>
      $then(HomeState(
          errorMap: errorMap ?? $value.errorMap,
          errorEntity: or(errorEntity, $value.errorEntity),
          processing: processing ?? $value.processing,
          screenStatus: screenStatus ?? $value.screenStatus));
}
