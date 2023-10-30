import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'userDataModel.dart';

class UserDetails extends StatelessWidget{
  final UserDataModel userDataModel;
  const UserDetails({super.key, required this.userDataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details', style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700
        ),),
      ),
      body: Column(
        children: [
          Center(child: Image.network(userDataModel.image)),
          Text(userDataModel.name),
          Text(userDataModel.phone),
          Text(userDataModel.email)
        ],
      ),
    );
  }
  
}