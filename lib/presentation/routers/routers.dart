import 'package:auto_route/annotations.dart';
import 'package:breaking_news/presentation/views/screens/login/login_screen.dart';

import '../views/screens/breaking_news/breaking_news_screen.dart';

/// The route configuration.
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: BreakingNewsScreen),
  ],
)
class $AppRouter {}
