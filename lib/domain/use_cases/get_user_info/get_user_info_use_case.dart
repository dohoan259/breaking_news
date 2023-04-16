import 'package:injectable/injectable.dart';

import '../use_case.dart';

@injectable
class GetUserInfoUseCase implements UseCase<int, Params> {
  @override
  Future<int> call({required Params params}) async {
    // todo
    return 1;
  }
}

class Params {
  Params();
}
