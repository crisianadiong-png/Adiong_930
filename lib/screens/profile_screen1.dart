import 'package:flutter/material.dart';
import 'package:lastname_930/component/globalappbar_component.dart';

class ProfileScreen1 extends StatefulWidget {
  const ProfileScreen1({Key? key}) : super(key: key);

  @override
  State<ProfileScreen1> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBarComponent(appName: ("Profile")),
        body: Column(
          children: [Text("ProfileScreen")],
        ));
  }
}
