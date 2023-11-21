import 'package:flutter/material.dart';
import 'package:test4/NavbarPage/Aboutus.dart';
import 'package:test4/NavbarPage/FeedbackPage.dart';
import 'package:test4/NavbarPage/NotifcationPage.dart';
import 'package:test4/NavbarPage/ProfilePage.dart';
import 'package:test4/NavbarPage/Progress.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(1, 1),
            width: MediaQuery.of(context).size.width,
            height: 190,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("image/account.png"),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: new BorderRadius.circular(60),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  )),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    title: Text('Profile',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.secondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    title: Text('Notifications',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.secondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.panorama,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    title: Text('Progress',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.secondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Progress()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.feedback,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    title: Text('Feedback',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.secondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FeedbackPage()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.add_photo_alternate,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    title: Text('About Us',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.secondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUs()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
