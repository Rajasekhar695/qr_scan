import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'QRHomePage.dart';

void main() => runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen()
    )
);

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "FL",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
    {
      "id": 1,
      "value": false,
      "title": "FR",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
    {
      "id": 2,
      "value": false,
      "title": "ML",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
    {
      "id": 3,
      "value": false,
      "title": "MR",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
    {
      "id": 4,
      "value": false,
      "title": "BL",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
    {
      "id": 5,
      "value": false,
      "title": "BR",
      "connected": false,
      "ssid" : "",
      "password" : ""
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: const Text('QR Home Page'),
            centerTitle: true,
            elevation: 5
        ),
        body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
            child: Column(
              children: [
                Text('Select any of the options to proceed.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,)),
                SizedBox(height: 10),
                Column(
                  children: List.generate(
                    checkListItems.length,
                        (index) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        checkListItems[index]["title"],
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      value: checkListItems[index]["value"],
                      onChanged: (bool? value) {
                        setState(() {
                          checkListItems[index]["value"] = value;
                          if (multipleSelected.contains(checkListItems[index])) {
                            multipleSelected.remove(checkListItems[index]);
                          } else {
                            multipleSelected.add(checkListItems[index]);
                          }
                        });
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHome(selectedOptions: multipleSelected),
                        ));
                  },
                  child: const Text('Open QR View'),
                ),
              ],
            ),
          ),
    );
  }
}


