import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text("Flutter Mobile"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }
}
