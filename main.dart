import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body:
      const Center( child: Text("Demo Scaffold!!!",style: TextStyle(color: Colors.blue,fontSize: 70),
                            
      ),
      ),
      floatingActionButton: FloatingActionButton(elevation: 10.0,
      child: const Icon(Icons.star),
      onPressed: (){
        
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      persistentFooterButtons: const [Icon(Icons.settings),Icon(Icons.logout)],
      drawer: Drawer(
        child: ListView(
          children: const <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              // leading: Icon(Icons.home),
              // title:  Text('Home'),
              //trailing: Icon(Icons.check),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title:  Text('action'),
              // trailing: Icon(Icons.check),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.green,
         items: const [
          BottomNavigationBarItem(
            label: "Trang Chủ",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
          
         ],
      )
    );
  }
}
