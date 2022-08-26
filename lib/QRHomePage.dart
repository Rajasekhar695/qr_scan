import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'QRViewExample.dart';

class MyHome extends StatefulWidget {
  List selectedOptions = [];
  MyHome({Key? key, required this.selectedOptions}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();

}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('QR Home Page'),
          centerTitle: true,
          elevation: 5
      ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [

              Column(
                children: List.generate(
                  widget.selectedOptions.length,
                      (index) =>
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(widget.selectedOptions[index]["title"]),
                                ),
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () async {

                                    final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QRViewExample(),
                                        ));

                                    setState(() {

                                      widget.selectedOptions[index]["connected"] = result[0];
                                      widget.selectedOptions[index]["ssid"] = result[1];
                                      widget.selectedOptions[index]["password"] = result[2];

                                    });
                                  },
                                  child: const Text('Open QR View'),
                                ),
                              ),
                              widget.selectedOptions[index]["connected"] ? Center(
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
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Reset'),
                ),
              ),
            ]
        ),
      );
  }

}