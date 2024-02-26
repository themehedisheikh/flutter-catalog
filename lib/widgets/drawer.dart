import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/D4D03AQHVcfbx31u39Q/profile-displayphoto-shrink_800_800/0/1675418353834?e=2147483647&v=beta&t=ZMijp1yyKUVjkLx7WlI2P1IczhFXpNxcNWjEUoPZMqo";
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Mehedi Sheikh"),
                accountEmail: Text("mehedi-dev@outlook.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email Me",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
