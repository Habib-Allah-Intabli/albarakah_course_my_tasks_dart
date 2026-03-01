// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  IconData icon;
  String title;
  VoidCallback onTap;
  AccountMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Icon(icon, color: Colors.black87),
          title: Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.grey),
        ),
        Divider(height: 1, color: Colors.grey.shade200),
      ],
    );
  }
}
