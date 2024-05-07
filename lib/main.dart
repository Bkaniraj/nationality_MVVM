import 'package:flutter/material.dart';

import 'services/locator.dart';
import 'ui/dashboard/dashboard_view.dart';

void main() async {
  await SetUpLocator();
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: DashBoardView()));
}
