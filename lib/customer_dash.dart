import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

import 'application/auth/auth_bloc.dart';

class CustomerDash extends StatefulWidget {
  const CustomerDash({Key? key}) : super(key: key);

  @override
  _CustomerDashState createState() => _CustomerDashState();
}

class _CustomerDashState extends State<CustomerDash> {
  List<int> list = [];
  // late TabController _tabController;

  @override
  void initState() {
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    //TabController _tabController=TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff32cb95),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
            backgroundColor: Colors.white12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Messages'),
            backgroundColor: Colors.white12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
            backgroundColor: Colors.white12,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      key: _key, // Assign the key to Scaffold.
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff32cb95),
              ),
              child: Text("MOBILE\nCleaning Service"),
            ),
            ListTile(
              title: const Text('Log out'),
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
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: GestureDetector(
                  onTap: () {
                    _key.currentState!.openDrawer();
                  },
                  child: Icon(
                    Icons.clear_all,
                    size: 50,
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Text(
                    "MOBILE\nCleaning Service",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 70),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff32cb95),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    child: Text(
                  "Choose Services",
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.cleaning_services_rounded,
                        size: 50,
                        color: Color(0xff32cb95),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(
                        Icons.clean_hands_sharp,
                        size: 50,
                        color: Color(0xff32cb95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (BuildContext cnx, int index) {
                          return Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: 180,
                                  child: Image.network(
                                    'https://png.pngtree.com/png-clipart/20190618/original/pngtree-office-worker-female-go-to-work-office-worker-thinking-woman-png-image_3933871.jpg',
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                Text('Asma'),
                                Row(
                                  children: [
                                    Icon(Icons.add_location_alt),
                                    Text('Ditance 3.4 km')
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
