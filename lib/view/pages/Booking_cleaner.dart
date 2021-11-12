import 'package:flutter/material.dart';

class BookDetailsCleaner extends StatefulWidget {
  const BookDetailsCleaner({Key? key}) : super(key: key);

  @override
  _BookDetailsCleanerState createState() => _BookDetailsCleanerState();
}

class _BookDetailsCleanerState extends State<BookDetailsCleaner> {
  int _rValue = 0;
  int _cValue = 1;

  void method(int value) {
    setState(() {
      _rValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Booking"),
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Color(0xff32cb95),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 50),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Ordered By       : Rashed Rana",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Phone     :01ff90ff",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 80,
                  width: 150,
                  child: Column(
                    children: [
                      Text(
                        "Book ID       :",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Address       :",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "A567407",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "1/A, R-7 Banani,\nDhaka-1213",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1 x Cleaner  :",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1 Hour          :",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Promo          :",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 120,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "150 Tk.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "   50 Tk.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "     0 Tk.         ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 30,
            endIndent: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Total             : ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "200Tk.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 80),
          Text(
            "Payment Orders",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: <Widget>[
                // RadioListTile(
                //   value: 1,
                //   groupValue: _rValue,
                //   onChanged: ( value) {
                //     //setState(() {});
                //     method(value);
                //   },
                //   // {
                //   //   method(value);
                //   // },
                //   title: Text('Android'),
                // ),

                Flexible(
                  fit: FlexFit.tight,
                  child: RadioListTile(
                    value: 1,
                    groupValue: _rValue,
                    title: const Text('Cash'),
                    onChanged: (value) {
                      setState(() {});
                    },
                    activeColor: Colors.red,
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: RadioListTile(
                    value: 2,
                    groupValue: _rValue,
                    title: const Text('Card'),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: RadioListTile(
                    value: 3,
                    groupValue: _rValue,
                    title: const Text('Bkash'),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff32cb95),
                fixedSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              'Confirm Booking ',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                fixedSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              'Decline Booking ',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
