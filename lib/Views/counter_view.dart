import 'package:flutter/material.dart';
import 'package:flutter_state_management_stacked/App/app.router.dart';
import 'package:flutter_state_management_stacked/View_Models/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${viewModel.getValue()}"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.addValue();
                  },
                  child: const Text('Add Value')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navservice.navigateToHomeView();
                  },
                  child: const Text('Route to Home'))
            ],
          ),
        ));
      },
    );
  }
}
