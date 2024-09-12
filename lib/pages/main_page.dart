import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/api_connection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text =  "coucou";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
                onPressed: (){
                  connect(text)
                      .then((resBody)
                  {
                    setState(() {
                      text = resBody;
                    });
                  });
                },
                child: Text("Requête"))
          ],
        ),
      ),
    );
  }
}
