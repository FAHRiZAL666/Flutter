// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              '33',
            ),
            const Text(
              '(2205328) Fahrizal Nur Aprian',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 160,
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 36, 62, 94),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              title: Text(
                'Profil',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              // leading:
              //     InkWell(child: Icon(Icons.keyboard_backspace), onTap: () {}),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(color: Color.fromARGB(255, 36, 62, 94)),
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
            height: 670,
            width: 350,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 36, 62, 94))),
                    onPressed: () {},
                    child: Text("Ubah")),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("#"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("&"),
                Text("&"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 360, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("&"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 450, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("&"),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(150, 700, 0, 0),
              child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 36, 62, 94))),
                  onPressed: () {},
                  child: Text("Simpan")))
        ],
      ),
    );
  }

  //jaawaban no 2
  Widget soalNo2() {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 300,
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.yellow,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    print("Button Shopping Pressed");
                  },
                  icon: const Icon(Icons.shopping_cart),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 223, 233),
                borderRadius: BorderRadius.circular(15)),
            width: 300,
            height: 60,
            margin: const EdgeInsets.fromLTRB(50, 270, 10, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(width: 10.0),
                ),
                hintText: "Cari pemeriksaan kesehatan",
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 280,
            margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
            child: Image(
              image: NetworkImage(
                  "https://fastly.picsum.photos/id/357/600/200.jpg?hmac=qX5qCu2B_PqB5O7vcBGOIn11NuNCrPLp687CRDXd9Ok"),
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 150,
            width: 80,
            margin: EdgeInsets.fromLTRB(300, 100, 0, 0),
            child: Image(
              image: NetworkImage(
                  "https://fastly.picsum.photos/id/669/200/200.jpg?hmac=lAa_bMRK0BRBCTEvl1acVqTfEDrXQc0yNwi683-13cE"),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 150, 0, 0),
              child: Text(
                'Hai Budi Martami',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(50, 190, 0, 0),
              child: Text(
                'Tetap jaga kesehatan ya',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 360, 0, 0),
              child: const Text(
                'Layanan Prodiax',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 410, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    height: 80,
                    width: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.border_color),
                      color: Colors.orange,
                      iconSize: 60.0,
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    height: 80,
                    width: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      color: Colors.orange,
                      iconSize: 60.0,
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    height: 80,
                    width: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit_document),
                      color: Colors.orange,
                      iconSize: 60.0,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 500, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text(
                    'Cari dan Pesan',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
                Container(
                  child: Text(
                    'Chat dengan CS',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
                Container(
                  child: Text(
                    'Hasil pemeriksaan',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 252, 235),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              width: 350,
              height: 60,
              margin: const EdgeInsets.fromLTRB(20, 570, 10, 0),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Text(
                    "Gunakan Kode Rujukan Dokter",
                    style: TextStyle(color: Colors.black),
                  ),
                  label: Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.black,
                    size: 30.0,
                  ))),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 228, 223, 233),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  print("Button Shopping Pressed");
                },
                icon: Icon(Icons.book)),
            IconButton(
                onPressed: () {
                  print("Button Location Pressed");
                },
                icon: Icon(Icons.my_location)),
            IconButton(
                onPressed: () {
                  print("Button Call Pressed");
                },
                icon: Icon(Icons.call)),
            IconButton(
                onPressed: () {
                  print("Button Account Pressed");
                },
                icon: Icon(Icons.account_circle)),
          ],
        ),
      ),
    );
  }
}
