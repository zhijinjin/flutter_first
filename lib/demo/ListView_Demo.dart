import 'package:flutter/material.dart';
import '../model/item1.dart';

class ListView_Demo extends StatelessWidget{
  Widget _imteBuild(BuildContext context,int index){
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Image.network(items[index].image,),
          SizedBox(height: 16,),
          Text(items[index].name,style: Theme.of(context).textTheme.title,),
          Text(items[index].age,style: Theme.of(context).textTheme.subtitle,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('ListView_Demo');
    return ListView.builder(itemCount: items.length,
        itemBuilder: _imteBuild);
  }
}