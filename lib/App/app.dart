import 'package:flutter_state_management_stacked/Services/counter_service.dart';
import 'package:flutter_state_management_stacked/Views/counter_view.dart';
import 'package:flutter_state_management_stacked/Views/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView, initial: true),
  MaterialRoute(page: HomeView)
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
])
class App {}
