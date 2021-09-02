import 'package:app_shortcuts/page/event_page.dart';
import 'package:app_shortcuts/page/message_page.dart';
import 'package:app_shortcuts/page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quick Actions'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final quickActions = QuickActions();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quickActions.setShortcutItems([
      ShortcutItem(type: 'event', localizedTitle: 'New Event', icon: 'event'),
      ShortcutItem(
          type: 'message', localizedTitle: 'New Message', icon: 'message'),
      ShortcutItem(type: 'search', localizedTitle: 'Search', icon: 'search'),
    ]);
    quickActions.initialize((type) {
      if (type == 'event') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewEventPage()),
        );
      } else if (type == 'message') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewMessagePage()),
        );
      } else if (type == 'search') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
