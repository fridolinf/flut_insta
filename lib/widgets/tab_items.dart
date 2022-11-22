import 'package:flutter/material.dart';

class TabItems extends StatelessWidget {
  TabItems(this.active, this.icon);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: active ? Colors.black : Colors.white, width: 1))),
            child: Icon(icon)),
      ),
    );
  }
}