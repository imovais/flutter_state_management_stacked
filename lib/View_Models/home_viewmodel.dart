import 'package:flutter_state_management_stacked/App/app.locator.dart';
import 'package:flutter_state_management_stacked/Services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  CounterService countService = locator<CounterService>();

  getValue() {
    return countService.counter;
  }
}
