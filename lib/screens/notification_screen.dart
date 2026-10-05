import 'package:flutter/material.dart';
import 'package:lastname_930/component/globalappbar_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBarComponent(appName: ("Notification")),
        body: Column(
          children: [Text("NotificationScreen")],
        ));
  }
}
