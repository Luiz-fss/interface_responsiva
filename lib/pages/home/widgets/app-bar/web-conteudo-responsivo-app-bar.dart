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
                    IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Pesquise alguma coisa"
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },));
  }
}
