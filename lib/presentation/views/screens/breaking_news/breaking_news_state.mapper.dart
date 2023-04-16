// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'breaking_news_state.dart';

class BreakingNewsStateMapper extends MapperBase<BreakingNewsState> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {BreakingNewsStateMapper()},
      ))
        ..linkAll({BaseStateMapper.container}));

  @override
  BreakingNewsStateMapperElement createElement(MapperContainer container) {
    return BreakingNewsStateMapperElement._(this, container);
  }

  @override
  String get id => 'BreakingNewsState';

  static final fromMap = container.fromMap<BreakingNewsState>;
  static final fromJson = container.fromJson<BreakingNewsState>;
}

class BreakingNewsStateMapperElement
    extends MapperElementBase<BreakingNewsState> {
  BreakingNewsStateMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  BreakingNewsState decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  BreakingNewsState fromMap(Map<String, dynamic> map) => BreakingNewsState(
      errorMap: container.$getOpt(map, 'errorMap') ?? const <String, bool?>{},
      errorEntity: container.$getOpt(map, 'errorEntity'),
      processing: container.$getOpt(map, 'processing') ?? false,
      screenStatus:
          container.$getOpt(map, 'screenStatus') ?? ScreenStatus.uninitialized);

  @override
  Function get encoder => encode;
  dynamic encode(BreakingNewsState v) => toMap(v);
  Map<String, dynamic> toMap(BreakingNewsState b) => {
        'errorMap': container.$enc(b.errorMap, 'errorMap'),
        'errorEntity': container.$enc(b.errorEntity, 'errorEntity'),
        'processing': container.$enc(b.processing, 'processing'),
        'screenStatus': container.$enc(b.screenStatus, 'screenStatus')
      };

  @override
  String stringify(BreakingNewsState self) =>
      'BreakingNewsState(screenStatus: ${container.asString(self.screenStatus)}, processing: ${container.asString(self.processing)}, errorEntity: ${container.asString(self.errorEntity)}, errorMap: ${container.asString(self.errorMap)})';
  @override
  int hash(BreakingNewsState self) =>
      container.hash(self.screenStatus) ^
      container.hash(self.processing) ^
      container.hash(self.errorEntity) ^
      container.hash(self.errorMap);
  @override
  bool equals(BreakingNewsState self, BreakingNewsState other) =>
      container.isEqual(self.screenStatus, other.screenStatus) &&
      container.isEqual(self.processing, other.processing) &&
      container.isEqual(self.errorEntity, other.errorEntity) &&
      container.isEqual(self.errorMap, other.errorMap);
}

mixin BreakingNewsStateMappable {
  String toJson() =>
      BreakingNewsStateMapper.container.toJson(this as BreakingNewsState);
  Map<String, dynamic> toMap() =>
      BreakingNewsStateMapper.container.toMap(this as BreakingNewsState);
  BreakingNewsStateCopyWith<BreakingNewsState, BreakingNewsState,
          BreakingNewsState>
      get copyWith => _BreakingNewsStateCopyWithImpl(
          this as BreakingNewsState, $identity, $identity);
  @override
  String toString() => BreakingNewsStateMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BreakingNewsStateMapper.container.isEqual(this, other));
  @override
  int get hashCode => BreakingNewsStateMapper.container.hash(this);
}

extension BreakingNewsStateValueCopy<$R, $Out extends BaseState>
    on ObjectCopyWith<$R, BreakingNewsState, $Out> {
  BreakingNewsStateCopyWith<$R, BreakingNewsState, $Out>
      get asBreakingNewsState =>
          base.as((v, t, t2) => _BreakingNewsStateCopyWithImpl(v, t, t2));
}

typedef BreakingNewsStateCopyWithBound = BaseState;

abstract class BreakingNewsStateCopyWith<$R, $In extends BreakingNewsState,
    $Out extends BaseState> implements BaseStateCopyWith<$R, $In, $Out> {
  BreakingNewsStateCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends BaseState>(
          Then<BreakingNewsState, $Out2> t, Then<$Out2, $R2> t2);
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

class _BreakingNewsStateCopyWithImpl<$R, $Out extends BaseState>
    extends CopyWithBase<$R, BreakingNewsState, $Out>
    implements BreakingNewsStateCopyWith<$R, BreakingNewsState, $Out> {
  _BreakingNewsStateCopyWithImpl(super.value, super.then, super.then2);
  @override
  BreakingNewsStateCopyWith<$R2, BreakingNewsState, $Out2>
      chain<$R2, $Out2 extends BaseState>(
              Then<BreakingNewsState, $Out2> t, Then<$Out2, $R2> t2) =>
          _BreakingNewsStateCopyWithImpl($value, t, t2);

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
      $then(BreakingNewsState(
          errorMap: errorMap ?? $value.errorMap,
          errorEntity: or(errorEntity, $value.errorEntity),
          processing: processing ?? $value.processing,
          screenStatus: screenStatus ?? $value.screenStatus));
}
