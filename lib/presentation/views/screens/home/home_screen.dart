import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import '../../../base/base_screen.dart';
import 'home_controller.dart';
import 'home_state.dart';

class HomeScreen extends BaseScreen<HomeController, HomeState> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('app_name'.tr())),
      body: const SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Text('home'),
      ),
    );
  }
}
