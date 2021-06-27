import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<dynamic> lst = [1, 2, 3, 4, 5, 6, 7, 8];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Ecom App UI",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.amber,
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: List.generate(lst.length, (index) {
                    return Container(
                      color: Colors.brown,
                      height: 100,
                      width: 100,
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
