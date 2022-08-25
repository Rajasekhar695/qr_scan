import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'QRViewExample.dart';

void main() => runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    )
);

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  // @override
  // State<MyHome> createState() => _MyHomeState();

  @override
  _MyHomeState createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {

  bool FLConnected = false, FRConnected = false, MLConnected = false, MRConnected = false, BLConnected = false, BRConnected = false;
  String FLssid = "", FRssid = "", MLssid = "", MRssid = "", BLssid = "", BRssid = "";
  String FLpassword = "", FRpassword = "", MLpassword = "", MRpassword = "", BLpassword = "", BRpassword = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('QR Home Page'),
          centerTitle: true,
          elevation: 5
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('FL'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            this.FLConnected = result[0];
                            FLssid = result[1];
                            FLpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    FLConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('FR'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            FRConnected = result[0];
                            FRssid = result[1];
                            FRpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    FRConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('ML'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            MLConnected = result[0];
                            MLssid = result[1];
                            MLpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    MLConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('MR'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            MRConnected = result[0];
                            MRssid = result[1];
                            MRpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    MRConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('BL'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            BLConnected = result[0];
                            BLssid = result[1];
                            BLpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    BLConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('BR'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // start the SecondScreen and wait for it to finish with a result
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewExample(),
                              ));

                          // after the SecondScreen result comes back update the Text widget with it
                          setState(() {
                            BRConnected = result[0];
                            BRssid = result[1];
                            BRpassword = result[2];
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const QRViewExample(FLConnected : false),
                          // ));
                        },
                        child: const Text('Open QR View'),
                      ),
                    ),
                    BRConnected ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ):
                    Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                  ]
              ),
            ]
        ),
      ),
    );
  }

}

