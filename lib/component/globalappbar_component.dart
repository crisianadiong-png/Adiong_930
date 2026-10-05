import 'package:flutter/material.dart';

class GlobalAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String? appName;
  const GlobalAppBarComponent({Key? key, this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xdb000000),
      title: Text(appName ?? "App"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
