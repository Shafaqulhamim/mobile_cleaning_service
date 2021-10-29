import 'package:flutter/material.dart';

class CleanHome extends StatefulWidget {
  const CleanHome({Key? key}) : super(key: key);

  @override
  _CleanHomeState createState() => _CleanHomeState();
}

class _CleanHomeState extends State<CleanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text("Clean Home"),
        leading: Icon(Icons.arrow_back_ios_new),
        // flexibleSpace: Padding(
        //   padding: const EdgeInsets.only(top: 150),
        //   child: Image.network(
        //     'https://png.pngtree.com/png-clipart/20190618/original/pngtree-office-worker-female-go-to-work-office-worker-thinking-woman-png-image_3933871.jpg',
        //     height: 35,
        //     width: 35,
        //   ),
        // ),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.network(
              'https://png.pngtree.com/png-clipart/20190618/original/pngtree-office-worker-female-go-to-work-office-worker-thinking-woman-png-image_3933871.jpg',
              height: 220,
              width: 220,
            ),
          ),
          Container(
            height: 465,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(0)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 30, right: 210),
                  child: Text(
                    "Hafisa Begum",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_location_alt,
                        color: Colors.indigoAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1/A, R-7 Banani, Dhaka-1213',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 260),
                  child: Text(
                    "Work Period",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "Weekly",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                        ),
                        child: Center(child: Text("Daily")),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                        ),
                        child: Center(child: Text("Monthly")),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 260),
                  child: Text(
                    "Work Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            "07:00",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          color: Colors.blue,
                        ),
                        child: Center(
                            child: Text(
                          "10:00",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          // color: Colors.grey,
                        ),
                        child: Center(child: Text("14:00")),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: Colors.grey,
                      //   child: Icon(
                      //     Icons.phone,
                      //     color: Colors.black45,
                      //   ),
                      // ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 40,
                          color: Colors.black45,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                        ),
                        child: Icon(
                          Icons.chat,
                          size: 40,
                          color: Colors.black45,
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Colors.grey,
                      //   child: Icon(
                      //     Icons.chat,
                      //     color: Colors.black45,
                      //   ),
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            fixedSize: const Size(250, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},

                        // style: ElevatedButton.styleFrom(
                        //   primary: Colors.purple,
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 20, vertical: 10),
                        //   // textStyle: const TextStyle(
                        //   //     fontSize: 30, fontWeight: FontWeight.bold)
                        //   // ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
