import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgeUrl =
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRniEwclYJ7jls6MjJCSIzEMGRxCjJo6m-jw7ZyczZZoaUbiCSd";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(color: Colors.red),
                accountName: Text("Harshdeep Singh"),
                accountEmail: Text("harsh.skamboj8@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgeUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
              ),
              title: Text(
                  "Home",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
