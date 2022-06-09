import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class navigationdrawer extends StatefulWidget {
  const navigationdrawer({Key? key}) : super(key: key);

  @override
  State<navigationdrawer> createState() => _navigationdrawerState();
}

class _navigationdrawerState extends State<navigationdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 69, 188, 73),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Text(
              "Account info",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text(' My Profile '),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("orders"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border_outlined),
            title: Text("favorites"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOG OUT"),
          )
        ],
      ),
    );
  }
}
