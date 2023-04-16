// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:breaking_news/domain/use_cases/get_user_info/get_user_info_use_case.dart'
    as _i5;
import 'package:breaking_news/presentation/views/dialogs/error_dialog.dart'
    as _i4;
import 'package:breaking_news/presentation/views/dialogs/loading_dialog.dart'
    as _i7;
import 'package:breaking_news/presentation/views/screens/breaking_news/breaking_news_controller.dart'
    as _i3;
import 'package:breaking_news/presentation/views/screens/home/home_controller.dart'
    as _i6;
import 'package:breaking_news/presentation/views/screens/login/login_controller.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.BreakingNewsController>(() => _i3.BreakingNewsController());
    gh.singleton<_i4.ErrorDialog>(_i4.ErrorDialog());
    gh.factory<_i5.GetUserInfoUseCase>(() => _i5.GetUserInfoUseCase());
    gh.factory<_i6.HomeController>(() => _i6.HomeController());
    gh.singleton<_i7.LoadingDialog>(_i7.LoadingDialog());
    gh.factory<_i8.LoginController>(() => _i8.LoginController());
    return this;
  }
}
