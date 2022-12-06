import 'package:flutter/material.dart';
import 'package:interface_responsiva/pages/home/widgets/app-bar/web-conteudo-responsivo-app-bar.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(width: 32,),
          WebConteudoResponsivoAppBar(),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(width: 24,),
          SizedBox(
            height: 32,
            child: OutlineButton(
              onPressed: (){},
              textColor: Colors.white,
              child: const Text("Fazer Login"),
              borderSide: const BorderSide(color: Colors.white,width: 2),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
              )
          )
        ],
      ),
    );
  }
}
