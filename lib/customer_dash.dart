import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(
                Icons.clear_all,
                size: 50,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
                  "MOBILE\nCleaning Service",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
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

                      //color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Icon(
                      Icons.clean_hands_sharp,
                      size: 50,
                      //color: Colors.black54,
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
                    height: 300,
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
    );
  }
}
