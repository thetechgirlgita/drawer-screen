import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drawer_Screen(),
    );
  }
}
class drawer_Screen extends StatefulWidget {
  const drawer_Screen({Key key}) : super(key: key);

  @override
  _drawer_ScreenState createState() => _drawer_ScreenState();
}

class _drawer_ScreenState extends State<drawer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text("Linkedin",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
          ),
          ),
      ),
      body : Center(child: Text("Drawer Screen",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
      ),
      ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Gita Khanal"),
                accountEmail: Text("thetechgirlgita@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg",
                      ),

                    )
                  ),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("A")
                )
              ],
            ),
            ListTile(
              title: Text("Item 1",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 2",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 3",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 4",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.blue,
              ),
            )
          ],
        )
      )
    );
  }
}








//Picture
//https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg