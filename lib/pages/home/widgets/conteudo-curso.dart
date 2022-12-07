import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ConteudoCurso extends StatelessWidget {
  const ConteudoCurso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4,),
        const Flexible(
          child: AutoSizeText(
            "Criação de interface responsiva",
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const AutoSizeText(
          "Luiz Fernando",
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        const AutoSizeText(
          "R\22,90",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )
      ],
    );
  }
}
