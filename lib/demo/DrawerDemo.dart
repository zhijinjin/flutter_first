import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('951507056@qq.com'),
            accountName: Text("zhijinjin"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              image:DecorationImage(
                  image: NetworkImage('http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg'),
                  fit:BoxFit.cover ,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow.withOpacity(0.4),
                      BlendMode.darken)
              ),
            ),
          ),
//                  DrawerHeader(
//                    child: Text('zhijinjin'.toUpperCase(),style: TextStyle(fontSize: 18),),
//                    decoration: BoxDecoration(
//                      color: Colors.blueGrey
//                    ),
//                  ),
          ListTile(
            title: Text('message'),
            trailing: Icon(Icons.message,color: Colors.yellow,),
            onTap: ()=> Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text('favorite'),
            trailing: Icon(Icons.favorite,color: Colors.yellow,),
            onTap: ()=> Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text('settings'),
            trailing: Icon(Icons.settings,color: Colors.yellow,),
//                    onTap: ()=> Navigator.pop(context),
            onLongPress: ()=> Navigator.of(context).pop(),
          )
        ],

      ),
    );
  }
}

