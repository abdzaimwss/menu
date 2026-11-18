import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  List<String> menu = ["Soto", "Rawon"];

  List<int> harga = [10000, 15000];

  List<String> gambar = ["assets/soto.jpg", "assets/rawon.jpg"];

  List<String> porsi = ["1 Porsi", "1 Porsi"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Makanan"),
        ),
        body: Table(
          border: TableBorder.all(width: 2),
          children: [
            // Header
            TableRow(
              children: [
                Text("No"),
                Text("Gambar"),
                Text("Menu"),
                Text("Harga"),
                Text("Porsi"),
              ],
            ),

            // Data makanan
            TableRow(
              children: [
                Text("1"),
                Image.asset(
                  gambar[0],
                  height: 60,
                  fit: BoxFit.cover,
                ),
                Text(menu[0]),
                Text("Rp ${harga[0]}"),
                Text(porsi[0]),
              ],
            ),

            TableRow(
              children: [
                Text("2"),
                Image.asset(
                  gambar[1],
                  height: 60,
                  fit: BoxFit.cover,
                ),
                Text(menu[1]),
                Text("Rp ${harga[1]}"),
                Text(porsi[1]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
