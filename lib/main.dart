import 'package:flutter/material.dart';

main(List<String> args) {
  return runApp(NavigationApp());
}

class NavigationApp extends StatefulWidget {
  @override
  _NavigationAppState createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  var contextKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: contextKey,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Center(
                  child: Text(
                    "Navigation drawer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 16,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  print("this is first ListTile");
                },
              ),
              // end first listTile

              // start second listTile
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 16,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  print("this is second listTile");
                },
              ),
              // end second listTile

              //start third listTile
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: 16,
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  print("this is third listTile");
                },
              ),
              // end third listTile

              //start fourth listTile
              ListTile(
                leading: Icon(
                  Icons.people,
                  size: 16,
                ),
                title: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  print("this is fourth listTile");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Navigation drawer",
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Show Message"),
            onPressed: () {
              contextKey.currentState.showSnackBar(
                SnackBar(
                  content: Text(
                    "this is snackBar widget" ,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
