import 'package:injectable/injectable.dart';

import '../../../../domain/entities/error_entity.dart';
import '../../../base/base_controller.dart';
import '../../../base/base_state.dart';
import 'breaking_news_state.dart';

@injectable
class BreakingNewsController extends BaseController<BreakingNewsState> {
  BreakingNewsController() : super(BreakingNewsState());

  @override
  Future<ErrorEntity?> loadData() async {
    state = state.copyWith(screenStatus: ScreenStatus.loaded);
    return null;
  }
}
