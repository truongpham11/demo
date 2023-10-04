import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'botnav.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("trang chủ"),
    ),
    body: const Text("Output"),
    bottomNavigationBar: const BottomMenu(idx: 1) ,
    );
  }
}