import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: NetworkImage('http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg'),
//          repeat: ImageRepeat.repeat,
          fit: BoxFit.cover
        ),
        color: Colors.yellow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(

            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(left: 12,top: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                  color: Colors.red,
                  width: 3,
                  style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(100),
//                bottomLeft: Radius.circular(100)
//              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(4, 6),
                  spreadRadius: 0,
                  blurRadius: 12
                ),
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(3, 6),
                    blurRadius: 16
                )
              ],
              gradient: RadialGradient(
                colors: [Colors.red,Colors.blue],
//                stops:[12,12]
              )
            ),
            child: Text(
              'hello'.toUpperCase(),
              style: TextStyle(
                  fontSize: 23,
                  color: Color.fromARGB(122,123, 32, 1)
              ),
            ),
          )
        ],
      ),
    );
  }
}