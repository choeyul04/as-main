import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("bob market"),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [for (var item in items) item],
          ),
        ),
      ),
    );
  }
}

class Carrotitem extends StatelessWidget {
  String title, addr;
  int price;

  Carrotitem({
    required this.title,
    required this.addr,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image: AssetImage('img/BOB.jpg')),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  addr,
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
                Text("$price"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.favorite), Text("12개")],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
