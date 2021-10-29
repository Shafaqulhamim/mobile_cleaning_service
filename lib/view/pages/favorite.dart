import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<int> list = [];

  @override
  void initState() {
    for (int i = 0; i <= 2; i++) {
      list.add(i);
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xff32cb95),
        title: Text("Favorite"),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext cnx, int index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   width: double.infinity,
                        //   height: 50,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Amena Akter",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_location_alt),
                            Text('Ditance 3.4 km')
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 5,
                  indent: 5,
                  endIndent: 5,
                  //color: Colors.yellow,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
