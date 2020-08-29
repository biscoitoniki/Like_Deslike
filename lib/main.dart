import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Like e Deslike'),
        ),
        body: LikePage(),
      ),
    ),
  );
}

class LikePage extends StatefulWidget {
  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  int like = 0;
  int deslike = 0;

  void ativarLike() {
    setState(() {
      if (like == 1){
        like = 0;
      }
      else{
        like =  1;
      }
      deslike = 0;
    });
  }

  void ativarDeslike() {
    setState(() {
      like =  0;
      if (deslike == 1){
        deslike = 0;
      }
      else{
        deslike =  1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
               child: Image.asset(
                 'images/like$like.png',
               ),
              onPressed: () {
                ativarLike();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/deslike$deslike.png',
              ),
              onPressed: () {
                ativarDeslike();
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Widget teste(int a){
 // 
//}