import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userid;
  const Profile({super.key, required this.username, required this.userid});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(username),
        Text(userid),
      ],
    );
  }
}
