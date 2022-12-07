import 'package:flutter/material.dart';

class Vantagens extends StatelessWidget {
  const Vantagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16,0,16,16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          _retornarVantagem("+45.000 alunos", "Didática garantida"),
          _retornarVantagem("+45.000 alunos", "Didática garantida"),
          _retornarVantagem("+45.000 alunos", "Didática garantida")
        ],
      ),
    );
  }

  Widget _retornarVantagem(String titulo, String subTitulo) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8,),
        Column(
          children: [
            Text(
              titulo,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              subTitulo,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
