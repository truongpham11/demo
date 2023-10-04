import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'task.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key,required this.idx});
  final idx;

 @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(fixedColor:Colors.greenAccent,
     items: const [
      BottomNavigationBarItem(
        label: "Trang chủ",
        icon: Icon(Icons.home)
      ),
      BottomNavigationBarItem(
        label: "Bán hàng",
        icon: Icon(Icons.superscript_rounded)
      ),
     ],
     currentIndex: idx,
     onTap: (int indexOfitem)
     {
     if(indexOfitem ==0)
     {
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushNamed(context, '/');
     }
     else
     {
       Navigator.popUntil(context, (route) => route.isFirst);
       Navigator.pushNamed(context, '/detail');
      
     }

     }
    );
  }
}