import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Yassin Samadi', style:TextStyle(color: Colors.white) ,), 
            accountEmail: Text('yassin.samadi@student.kdg.be', style:TextStyle(color: Colors.white) ,),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset(
                "assets/images/Avatar.png",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )
            ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundblack.png"),
                fit: BoxFit.cover,
            ),
            
            ),
      ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Achievements'),
            onTap: () => null,
          ),
      ],
      ),
    );
  }
}