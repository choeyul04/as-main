import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Carrotitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '아마도 우리집', price: 1000));
    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<Carrotitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("자두 market"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(price: item.price),
                        ));
                  },
                  child: item)
          ],
        ),
      ),
    );
  }
}
