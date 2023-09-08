import 'package:flutter/material.dart';

import 'package:mybook/feature/home/presntation/views/widgets/homeview_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeViewBody());
  }
}
