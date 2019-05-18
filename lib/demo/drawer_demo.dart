import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text('header'.toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[100],
              //   ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text('piaohan',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('whatissrc@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://profile.csdnimg.cn/3/2/0/1_msmile_my'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://profile.csdnimg.cn/3/2/0/1_msmile_my'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.softLight)),
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context), //做抽屉列表项点击后自动关闭
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context), //做抽屉列表项点击后自动关闭
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context), //做抽屉列表项点击后自动关闭
              ),
            ],
          ),
        );
  }
}
