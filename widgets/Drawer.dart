import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);
  final imageurl=
      "https://cdn.vox-cdn.com/thumbor/99Qekwy3KCSdI5F921JCKsX2QDo=/0x0:3000x2000/1820x1024/filters:focal(1260x760:1740x1240):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/62153379/REC_Elon_LedeImage__1_.0.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.white38),
                  accountEmail:Text('Munnybabu1@gmail.com',style: TextStyle(color: Colors.black)),
                  accountName: Text('Monsih REddy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.redAccent,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.redAccent,
              ),
              title: Text(
                'profile',
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.redAccent,
              ),
              title: Text(
                'EMail',
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
