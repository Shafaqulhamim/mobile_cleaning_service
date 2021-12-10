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
    for (int i = 0; i <= 0; i++) {
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
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            "Mehedi Hasan",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff32cb95),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_location_alt,
                                size: 20, color: Color(0xff32cb95)),
                            Text(
                              ' Mirpur-10',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff32cb95),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: Color(0xff32cb95),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
