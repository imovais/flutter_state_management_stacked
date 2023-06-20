import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../View_Models/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(child: Text(HomeViewModel().getValue().toString()),),
        );
      },
    );
  }
}
