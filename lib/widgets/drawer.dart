import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://static.picdeno.com/p/pt_6824122734476041253112_0_424cfb09abc1e290de2d6290bc386920.jpg";
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: Text("M.S Vinayak"),
                accountEmail: Text("mailvizzard@gmail.com"),
                // currentAccountPicture: Image.network(imageurl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.login);
              },
              leading: Icon(CupertinoIcons.power, color: Colors.white,),
              title: Text(
                "Log out",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}