import 'package:flutter/material.dart';
import 'package:flutter_state_management_stacked/App/app.locator.dart';
import 'package:flutter_state_management_stacked/App/app.router.dart';
import 'package:flutter_state_management_stacked/Views/counter_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
