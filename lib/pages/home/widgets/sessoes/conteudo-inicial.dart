import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';
import 'package:interface_responsiva/pages/home/widgets/custom-search-field.dart';

class ConteudoInicial extends StatelessWidget {
  const ConteudoInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      final larguraMaxima = constraints.maxWidth;
      return _retornarConteudoPorDispositivo(constraints);
    });
  }

  _retornarConteudoPorDispositivo(BoxConstraints constraints){
    if(constraints.maxWidth >= tabletBreakPoint){
      return _retornarConteudoWeb();
    }
  }

  Widget _retornarConteudoWeb(){
    return AspectRatio(
      aspectRatio: 3.2,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
                "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                 fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Card(
              color: Colors.black,
              elevation: 8,
              child: Container(
                padding: const EdgeInsets.all(32),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    Text(
                      "Aprenda Flutter com este curso",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Aprenda Flutter com este curso",
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 16,),
                    CustomSearchField()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
