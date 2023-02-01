import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(
        "First Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
    ),
       centerTitle: true,
          backgroundColor: Colors.pink,
          actions: [
            IconButton(onPressed: () async {
              SharedPreferences prefes = await SharedPreferences.getInstance();

              await prefes.remove('isLoggedIn');
              Navigator.pushNamedAndRemoveUntil(context, 'HomePage2', (route) => false);
            }, icon: Icon(Icons.power_settings_new))
          ],
        ),
    );
  }
}
