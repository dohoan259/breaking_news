import 'package:injectable/injectable.dart';

import '../../../../domain/entities/error_entity.dart';
import '../../../base/base_controller.dart';
import '../../../base/base_state.dart';
import 'home_state.dart';

@injectable
class HomeController extends BaseController<HomeState> {
  HomeController() : super(HomeState());

  @override
  Future<ErrorEntity?> loadData() async {
    state = state.copyWith(screenStatus: ScreenStatus.loaded);
    return null;
  }
}
