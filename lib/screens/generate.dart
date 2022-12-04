import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  State<Generate> createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {

  String qrData = "https://github.com/sefaerkan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              QrImage(data: qrData),
              SizedBox(height: 20.0),
              Text("Get your link to the QR Code"),
              TextField(
                controller: qrText,
                decoration: InputDecoration(
                  hintText: "Enter the Data/Link",
                ),
              ),
              SizedBox(height: 10.0),
              TextButton(
                child: Text(
                  "GENERATE QR CODE",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  if(qrText.text.isEmpty) {
                    setState(() {
                      qrData = "https://flutter.dev";
                    });
                  } else {
                      setState(() {
                        qrData = qrText.text;
                      });
                  }
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
              ),
            ],
          ),
        ),
      ),
    );
  }
  final TextEditingController qrText = TextEditingController();
}
