import 'package:flutter/material.dart';

class NotificationComponent extends StatelessWidget {
  final String? message;
  final String? timePosted;
  final String? type;
  final bool isUnread;

  const NotificationComponent({
    super.key,
    this.message,
    this.timePosted,
    this.type,
    this.isUnread = false,
  });

  IconData get _icon {
    switch (type) {
      case "like":
        return Icons.thumb_up_alt;
      case "comment":
        return Icons.comment;
      case "friend":
        return Icons.person_add;
      default:
        return Icons.notifications;
    }
  }

  Color get _color {
    switch (type) {
      case "like":
        return Colors.blue;
      case "comment":
        return Colors.green;
      case "friend":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isUnread ? Colors.blue.withOpacity(0.05) : Colors.transparent,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _color.withOpacity(0.15),
          child: Icon(_icon, color: _color),
        ),
        title: Text(
          message ?? "You have a new notification.",
          style: TextStyle(
              fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
        ),
        subtitle: Text(timePosted ?? "Just now"),
        trailing: isUnread
            ? Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: Colors.blue, shape: BoxShape.circle),
              )
            : null,
      ),
    );
  }
}
