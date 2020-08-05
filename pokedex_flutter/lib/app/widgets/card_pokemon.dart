import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../domain/pokemon.dart';

class CardPokemon extends StatelessWidget {
  final Pokemon pokemon;

  CardPokemon(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getColor(),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(20, 18))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  pokemon.name,
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  '#00${pokemon.id}',
                  style: TextStyle(
                      color: Color(0xff80FFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xff4DFFFFFF),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                          20, 25) //                 <--- border radius here
                      ),
                ),
                child: Center(
                  child: Text(
                    pokemon.type,
                    style: TextStyle(
                        color: Color(0xffB3FFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                  //inicia com uma imagem transparente enquanto a 'oficial' carrega, para ter uma transição mais suave para o usuario
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: pokemon.imageUrl,
                    width: 70,
                    height: 70,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  //define a cor do card de acordo com o tipo do pokemon
  Color getColor() {
    if (pokemon.type == 'Grass') {
      return Color(0xff48d0b0);
    } else if (pokemon.type == 'Fire') {
      return Color(0xfffb6c6c);
    } else if (pokemon.type == 'Water') {
      return Color(0xff0085FF);
    } else {
      return Colors.grey;
    }
  }
}
