import 'package:flutter/material.dart';

class WebConteudoResponsivoAppBar extends StatelessWidget {
  const WebConteudoResponsivoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context,constraint){
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 4,),
                    IconButton(
                        onPressed: (){},
                        color: Colors.grey,
                        icon: const Icon(Icons.search),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Pesquise alguma coisa",
                          isCollapsed: true
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 32,),
            _retornarBotaoAprender(constraint),
            const SizedBox(width: 8,),
            _retornarBotaoflutter(constraint)

          ],
        );
      },));
  }

  Widget _retornarBotaoAprender(BoxConstraints constraints){
    if(constraints.maxWidth > 400){
      return TextButton(
        onPressed: (){},
        child: Text("Aprender",),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      );
    }else{
      return Container();
    }
  }

  Widget _retornarBotaoflutter(BoxConstraints constraints){
    if(constraints.maxWidth > 500){
      return TextButton(
        onPressed: (){},
        child: Text("Flutter",),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      );
    }else{
      return Container();
    }
  }
}
