import 'package:flutter/material.dart';
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red,
              Colors.orange
            ]
            ),
          borderRadius: BorderRadius.circular(60)
        ),
      ),
        Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://i.insider.com/5d10a8a597ad7650f7026ef2?width=1136&format=jpeg"), fit: BoxFit.cover),
          color: Colors.grey[300],
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(60)
        ),
      ),
      ]
    );
  }
}