import 'package:flutter/material.dart';
import 'package:interface_responsiva/pages/home/widgets/app-bar/app-bar-mobile.dart';
import 'package:interface_responsiva/pages/home/widgets/app-bar/app-bar-web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: _retornarAppBar(constraints),
        drawer: Drawer(),
      );
    });
  }

  PreferredSizeWidget _retornarAppBar(BoxConstraints constraints) {
    if (constraints.maxWidth <= 800) {
      //necessario por PreferedSize antes pois o MobileAppBar não é um widget direto do tipo app bar
      return const PreferredSize(
          preferredSize: Size(double.infinity, 56), child: MobileAppBar());
    } else {
      return PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity,72));
    }
  }
}
