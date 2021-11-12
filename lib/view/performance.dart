import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/view/account.dart';

import 'package:mobile_cleaning_service/view/pages/chat.dart';
import 'package:mobile_cleaning_service/view/pages/favorite.dart';
import 'package:mobile_cleaning_service/view/pages/home.dart';
import 'package:mobile_cleaning_service/view/pages/notification.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

class Performance extends StatefulWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  _PerformanceState createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  var _currentindex = 0;
  int _selectedIndex = 0;
  final pages = [NotificationScreen(), Chat(), Favorite(), Home()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'User Name',
                      style: TextStyle(fontSize: 20),
                    ),
                    accountEmail: Text(''),
                    currentAccountPicture: CircleAvatar(
                      child: Image(
                          image: NetworkImage(
                              'https://www.linkpicture.com/q/undraw_profile_pic_ic5t_8.png')),
                      //Icon(
                      //   Icons.account_circle_outlined,
                      //   size: 50,
                      // ),
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                    decoration: BoxDecoration(color: Color(0xff32cb95)),
                    // otherAccountsPictures: [
                    //   CircleAvatar(child: Text('x')),
                    //   CircleAvatar(child: Text('x')),
                    // ],
                  ),

                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.menu_book,
                        size: 30,
                      ),
                    ),
                    title: const Text("My Book"),
                    onTap: () {
                      print('Text1');
                      // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      //   return page1();
                      // }));
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                      ),
                    ),
                    title: const Text("My Account"),
                    onTap: () {
                      print('Text1');
                      // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      //   return page1();
                      // }));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.fmd_good_outlined,
                        size: 30,
                      ),
                    ),
                    title: const Text("My Address"),
                    onTap: () {
                      print('Text1');
                      // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      //   return page1();
                      // }));
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.money_off_sharp,
                        size: 30,
                      ),
                    ),
                    title: const Text("Promo Code"),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.help_sharp,
                        size: 30,
                      ),
                    ),
                    title: const Text("Help & Support"),
                    // trailing: const Icon(Icons.arrow_forward),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.settings_suggest_outlined,
                        size: 30,
                      ),
                    ),
                    title: const Text("Settings"),
                    // trailing: const Icon(Icons.arrow_forward),
                  ),
                  // title: Text('Page2'),
                  // trailing: Icon(Icons.arrow_forward),
                  // onTap: () {
                  //   print('Text2');
                  // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                  //   return page2();
                  // }));
                  const Divider(),

                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Icon(
                        Icons.power_settings_new,
                        size: 30,
                      ),
                    ),
                    title: const Text("Logout"),
                    onTap: () {
                      authBloc.add(const SignedOut());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Welcome();
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            key: _key,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: Icon(
                        Icons.line_weight_rounded,
                        size: 40,
                        color: Color(0xff32cb95),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/login.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 185,
                    color: Color(0xff32cb95),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Overall perfomance",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Text(
                                      '92%',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Order\n Completed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Text(
                                      '99%',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Response\n Time",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Text(
                                      '97%',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "On-time\n Reach",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Text(
                                      '4.7',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Rating\n",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Earnings",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 250,
                          width: 150,

                          //color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Total Earning",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Active Order",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Declined Order",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 250,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "700 Tk.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "4200 Tk.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          //color: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentindex,
              unselectedItemColor: Colors.black54,
              // backgroundColor: Colors.lightGreenAccent,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',

                  // backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),

                  label: 'Favorite',

                  // onTap: () {
                  //   // _key.currentState!.openDrawer();
                  //   Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(builder: (context) => Welcome()),
                  //               );
                  // },

                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                  //backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notification_add_outlined),
                  label: 'Notification',
                  // backgroundColor: Colors.pink,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                });
              },

              //currentIndex: _selectedIndex,
              selectedItemColor: Color(0xff32cb95),
              // onTap: _onItemTapped,
            ),
            //body: pages[_currentindex],
          ),
        );
      },
    );
  }
}
