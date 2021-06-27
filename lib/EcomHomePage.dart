import 'package:ecom_screen/screen1.dart';
import 'package:ecom_screen/screen2.dart';
import 'package:ecom_screen/screen3.dart';
import 'package:ecom_screen/screen4.dart';
import 'package:flutter/material.dart';

class EcomHomepage extends StatefulWidget {
  const EcomHomepage({Key key}) : super(key: key);

  @override
  _EcomHomepageState createState() => _EcomHomepageState();
}

class _EcomHomepageState extends State<EcomHomepage> {
  int currentTab = 0;

  Widget currentScreen = Screen1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.blue,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  minWidth: 50,
                  onPressed: () => {
                    setState(() {
                      currentScreen = Screen1();
                      currentTab = 0;
                    })
                  },
                  child: Icon(Icons.home,
                      color: currentTab == 0 ? Colors.white : Colors.black),
                ),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () => {
                    setState(() {
                      currentScreen = Screen2();
                      currentTab = 1;
                    })
                  },
                  child: Icon(Icons.list,
                      color: currentTab == 1 ? Colors.white : Colors.black),
                ),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () => {
                    setState(() {
                      currentScreen = Screen3();
                      currentTab = 2;
                    })
                  },
                  child: Icon(Icons.search,
                      color: currentTab == 2 ? Colors.white : Colors.black),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: () => {
                    setState(() {
                      currentScreen = Screen4();
                      currentTab = 4;
                    })
                  },
                  child: Icon(Icons.add_shopping_cart_outlined,
                      color: currentTab == 4 ? Colors.white : Colors.black),
                ),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () => {
                    setState(() {
                      currentScreen = Screen4();
                      currentTab = 3;
                    })
                  },
                  child: Icon(Icons.person,
                      color: currentTab == 3 ? Colors.white : Colors.black),
                ),
              ]),
        ),
      ),
    );
  }
}
