import 'package:flutter/material.dart';
import 'auth.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;
  int _act;
  void nothing() {}
  @override
  Widget build(BuildContext context) {
    void _signOut() async {
      try {
        await auth.signOut();
        onSignOut();
      } catch (e) {
        print(e);
      }
    }

    return new MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: new AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Hackathons',
              ),
              Tab(
                text: 'Meetups',
              ),
            ],
          ),
          title: Text('TechEvents'),
          actions: <Widget>[
            new FlatButton(
                onPressed: _signOut,
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white)))
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            new Column(children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Local Hack Day'),
                  subtitle: _act != 2
                      ? const Text('At Empowerers Coworking Space, Green park')
                      : null,
                  enabled: _act == 2,
                  onTap: nothing),
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Local Hack Day'),
                  subtitle:
                      _act != 2 ? const Text('At 91springboard Okhla') : null,
                  enabled: _act == 2,
                  onTap: nothing),
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('MSHack by Microsoft'),
                  subtitle: _act != 2
                      ? const Text('In Delhi NCR on 15th - 16th December')
                      : null,
                  enabled: _act == 2,
                  onTap: nothing),
            ]),
            new Column(children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('PyDelhi Devsprint'),
                  subtitle: _act != 2
                      ? const Text('At some place on 8th December')
                      : null,
                  enabled: _act == 2,
                  onTap: nothing),
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('ILUG-D Meetup'),
                  subtitle: _act != 2
                      ? const Text('At Some Place on 8th December')
                      : null,
                  enabled: _act == 2,
                  onTap: nothing),
              ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('LinuxChix Meetup'),
                  subtitle: _act != 2
                      ? const Text('At Some place on 9th December')
                      : null,
                  enabled: _act == 2,
                  onTap: nothing),
            ]),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Hi User'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(''),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(''),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    ));
// ...
  }
}
