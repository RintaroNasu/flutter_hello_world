import 'package:flutter/material.dart';
import 'package:flutter_hello_world/next_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  List<String> titleList = ['Amazon', '楽天', 'Yahoo'];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('flutterラボ'),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.key),
                title: Text(titleList[index]),
                onTap: () {
                  print("tapされました");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(titleList[index]),
                    ),
                  );
                },
              ),
              Image.asset('assets/images/sea.png', width: 40, height: 40),
              Divider(height: 0),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add("Google");
          print(titleList);
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        elevation: 100,
        child: SafeArea(child: Text("メニューを追加することができます")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            print("タップされたのは$index");
          });
        },
      ),
    );
  }
}
