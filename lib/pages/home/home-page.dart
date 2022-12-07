import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';
import 'package:interface_responsiva/pages/home/widgets/app-bar/app-bar-mobile.dart';
import 'package:interface_responsiva/pages/home/widgets/app-bar/app-bar-web.dart';
import 'package:interface_responsiva/pages/home/widgets/sessoes/conteudo-inicial.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
          appBar: _retornarAppBar(constraints),
          drawer: _retornarDrawer(constraints),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400
              ),
              child: ListView(
                children: const [
                  ConteudoInicial()
                ],
              ),
            ),
          ),
      );
    });
  }

  PreferredSizeWidget _retornarAppBar(BoxConstraints constraints) {
    if (constraints.maxWidth <= mobileBreakPoint) {
      //necessario por PreferedSize antes pois o MobileAppBar não é um widget direto do tipo app bar
      return const PreferredSize(
          preferredSize: Size(double.infinity, 56), child: MobileAppBar());
    } else {
      return PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity,72));
    }}

  Widget _retornarDrawer(BoxConstraints constraints){
    if (constraints.maxWidth <= mobileBreakPoint) {
      return const Drawer();
    } else {
      return Container();
    }
  }
}
