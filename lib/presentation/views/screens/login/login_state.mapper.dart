// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'login_state.dart';

class LoginStateMapper extends MapperBase<LoginState> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {LoginStateMapper()},
      ))
        ..linkAll({BaseStateMapper.container}));

  @override
  LoginStateMapperElement createElement(MapperContainer container) {
    return LoginStateMapperElement._(this, container);
  }

  @override
  String get id => 'LoginState';

  static final fromMap = container.fromMap<LoginState>;
  static final fromJson = container.fromJson<LoginState>;
}

class LoginStateMapperElement extends MapperElementBase<LoginState> {
  LoginStateMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  LoginState decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  LoginState fromMap(Map<String, dynamic> map) => LoginState(
      errorMap: container.$getOpt(map, 'errorMap') ?? const <String, bool?>{},
      errorEntity: container.$getOpt(map, 'errorEntity'),
      processing: container.$getOpt(map, 'processing') ?? false,
      screenStatus:
          container.$getOpt(map, 'screenStatus') ?? ScreenStatus.uninitialized,
      username: container.$getOpt(map, 'username') ??
          const ValidateModel<String?>(identity: 'username', value: null),
      password: container.$getOpt(map, 'password') ??
          const ValidateModel<String?>(identity: 'password', value: null));

  @override
  Function get encoder => encode;
  dynamic encode(LoginState v) => toMap(v);
  Map<String, dynamic> toMap(LoginState l) => {
        'errorMap': container.$enc(l.errorMap, 'errorMap'),
        'errorEntity': container.$enc(l.errorEntity, 'errorEntity'),
        'processing': container.$enc(l.processing, 'processing'),
        'screenStatus': container.$enc(l.screenStatus, 'screenStatus'),
        'username': container.$enc(l.username, 'username'),
        'password': container.$enc(l.password, 'password')
      };

  @override
  String stringify(LoginState self) =>
      'LoginState(screenStatus: ${container.asString(self.screenStatus)}, processing: ${container.asString(self.processing)}, errorEntity: ${container.asString(self.errorEntity)}, errorMap: ${container.asString(self.errorMap)}, username: ${container.asString(self.username)}, password: ${container.asString(self.password)})';
  @override
  int hash(LoginState self) =>
      container.hash(self.screenStatus) ^
      container.hash(self.processing) ^
      container.hash(self.errorEntity) ^
      container.hash(self.errorMap) ^
      container.hash(self.username) ^
      container.hash(self.password);
  @override
  bool equals(LoginState self, LoginState other) =>
      container.isEqual(self.screenStatus, other.screenStatus) &&
      container.isEqual(self.processing, other.processing) &&
      container.isEqual(self.errorEntity, other.errorEntity) &&
      container.isEqual(self.errorMap, other.errorMap) &&
      container.isEqual(self.username, other.username) &&
      container.isEqual(self.password, other.password);
}

mixin LoginStateMappable {
  String toJson() => LoginStateMapper.container.toJson(this as LoginState);
  Map<String, dynamic> toMap() =>
      LoginStateMapper.container.toMap(this as LoginState);
  LoginStateCopyWith<LoginState, LoginState, LoginState> get copyWith =>
      _LoginStateCopyWithImpl(this as LoginState, $identity, $identity);
  @override
  String toString() => LoginStateMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          LoginStateMapper.container.isEqual(this, other));
  @override
  int get hashCode => LoginStateMapper.container.hash(this);
}

extension LoginStateValueCopy<$R, $Out extends BaseState>
    on ObjectCopyWith<$R, LoginState, $Out> {
  LoginStateCopyWith<$R, LoginState, $Out> get asLoginState =>
      base.as((v, t, t2) => _LoginStateCopyWithImpl(v, t, t2));
}

typedef LoginStateCopyWithBound = BaseState;

abstract class LoginStateCopyWith<$R, $In extends LoginState,
    $Out extends BaseState> implements BaseStateCopyWith<$R, $In, $Out> {
  LoginStateCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends BaseState>(
      Then<LoginState, $Out2> t, Then<$Out2, $R2> t2);
  @override
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap;
  @override
  $R call(
      {Map<String, bool?>? errorMap,
      ErrorEntity? errorEntity,
      bool? processing,
      ScreenStatus? screenStatus,
      ValidateModel<String?>? username,
      ValidateModel<String?>? password});
}

class _LoginStateCopyWithImpl<$R, $Out extends BaseState>
    extends CopyWithBase<$R, LoginState, $Out>
    implements LoginStateCopyWith<$R, LoginState, $Out> {
  _LoginStateCopyWithImpl(super.value, super.then, super.then2);
  @override
  LoginStateCopyWith<$R2, LoginState, $Out2>
      chain<$R2, $Out2 extends BaseState>(
              Then<LoginState, $Out2> t, Then<$Out2, $R2> t2) =>
          _LoginStateCopyWithImpl($value, t, t2);

  @override
  MapCopyWith<$R, String, bool?, ObjectCopyWith<$R, bool?, bool?>?>
      get errorMap => MapCopyWith($value.errorMap,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(errorMap: v));
  @override
  $R call(
          {Map<String, bool?>? errorMap,
          Object? errorEntity = $none,
          bool? processing,
          ScreenStatus? screenStatus,
          ValidateModel<String?>? username,
          ValidateModel<String?>? password}) =>
      $then(LoginState(
          errorMap: errorMap ?? $value.errorMap,
          errorEntity: or(errorEntity, $value.errorEntity),
          processing: processing ?? $value.processing,
          screenStatus: screenStatus ?? $value.screenStatus,
          username: username ?? $value.username,
          password: password ?? $value.password));
}
