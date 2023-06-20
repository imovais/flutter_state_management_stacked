import 'package:flutter_state_management_stacked/App/app.locator.dart';
import 'package:flutter_state_management_stacked/Services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  CounterService countService = locator<CounterService>();
  NavigationService navservice = locator<NavigationService>();

  addValue() {
    countService.addcounter();
    rebuildUi();
  }

  getValue() {
    return countService.counter;
  }
}
