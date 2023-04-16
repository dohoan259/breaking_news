import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import '../../../base/base_screen.dart';
import 'breaking_news_controller.dart';
import 'breaking_news_state.dart';

class BreakingNewsScreen
    extends BaseScreen<BreakingNewsController, BreakingNewsState> {
  BreakingNewsScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('app_name'.tr())),
      body: const SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Text('breaking_news'),
      ),
    );
  }
}
