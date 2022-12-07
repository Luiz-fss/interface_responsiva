import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';

class Vantagens extends StatelessWidget {
  const Vantagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      return _validarDispositivo(constraint);
    });
  }

  Widget _validarDispositivo(BoxConstraints constraints){
    if(constraints.maxWidth >= mobileBreakPoint){
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
    }else{
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
            _retornarVantagemMobile("+45.000 alunos", "Didática garantida"),
            _retornarVantagemMobile("+45.000 alunos", "Didática garantida"),
            _retornarVantagemMobile("+45.000 alunos", "Didática garantida")
          ],
        ),
      );
    }
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              textAlign: TextAlign.center,
              style:
              const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subTitulo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  Widget _retornarVantagemMobile(String titulo, String subTitulo) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 8,),
        Text(
          titulo,
          style:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitulo,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }


}
