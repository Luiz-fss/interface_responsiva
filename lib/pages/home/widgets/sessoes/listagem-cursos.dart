import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';
import 'package:interface_responsiva/pages/home/widgets/conteudo-curso.dart';

class ListagemCursos extends StatelessWidget {
  const ListagemCursos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return GridView.builder(
        /* "encurta" os itens de forma a caber*/
        shrinkWrap: true,
        padding:  EdgeInsets.symmetric(
          vertical: 16,
          horizontal: _retornarPaddingHorizontal(constraints)
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context,index){
          return ConteudoCurso();
        },
        /*Detalhe importante: No caso de grid view, não é interessante se utilizar
      o layout builder para definir a quantidade de exibições da grid baseado no
       tamanho que seu dispositivo possui.
       *por isso esse trecho de código foi modificado
       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 3
      )
       */
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            maxCrossAxisExtent: 300,
        ),
        /*Possivel especificar quantos itens vai ter na horizontal
      * SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      * Obs: Ao usar uma GridView dentro de uma list view gera erro
      *  pois o grid view nao tem altura definida e a listview tbm nao.
      *
      * Detalhe 2: ele vai tentar fazer scroll pela grid e não pela lista
      * ou seja vai ser barrado. Portanto é necessário remover a fisica da grid*/

      );
    });
  }

  double _retornarPaddingHorizontal(BoxConstraints constraints) {
    if(constraints.maxWidth >= tabletBreakPoint){
      return 0;
    }else{
      return 16;
    }
  }


}
