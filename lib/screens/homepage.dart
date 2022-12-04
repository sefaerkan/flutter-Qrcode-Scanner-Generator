import 'package:flutter/material.dart';
import 'package:qrcode/screens/generate.dart';
import 'package:qrcode/screens/scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE APP"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556"),
            ),
            button("Scan QR Code", Scan()),
            SizedBox(height: 10.0),
            button("Generate QR Code", Generate()),
          ],
        ),
      ),
    );
  }

  Widget button(String text, Widget widget) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: Colors.blue,
            width: 3.0,
          ),
        ),
      ),
    );
  }
}
