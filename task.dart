import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'botnav.dart';


class  IndexScreen extends StatelessWidget {
  const  IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text("Trang chủ"),
    ),
    body: const Text("Index"),
    bottomNavigationBar: const BottomMenu(idx:0),


    );
  }
}