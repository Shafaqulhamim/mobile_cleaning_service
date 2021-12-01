import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:mobile_cleaning_service/view/book_details.dart';

class CleanHome extends StatefulWidget {
  final UserData userDataList;
  const CleanHome(this.userDataList, {Key? key}) : super(key: key);

  @override
  _CleanHomeState createState() => _CleanHomeState();
}

class _CleanHomeState extends State<CleanHome> {
  bool weekly = false;
  bool monthly = false;
  String xdate = "";
  bool daily = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32cb95),
      appBar: AppBar(
        title: Text("Clean Home"),
        leading: Icon(Icons.arrow_back_ios_new),
        elevation: 0,
        backgroundColor: Color(0xff32cb95),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    padding:
                        const EdgeInsets.only(left: 0, top: 30, right: 280),
                    child: Text(
                      widget.userDataList.firstname,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_location_alt,
                          color: Color(0xff32cb95),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.userDataList.address,
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
                    padding: const EdgeInsets.only(right: 130),
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 260),
                    child: Text(
                      "Work Period",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              weekly = !weekly;
                              monthly = false;
                              daily = false;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: (weekly == true)
                                  ? Color(0xff32cb95)
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Weekly",
                                style: TextStyle(
                                    color: (weekly == true)
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              weekly = false;
                              monthly = false;
                              daily = !daily;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: (daily == true)
                                  ? Color(0xff32cb95)
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Daily",
                              style: TextStyle(
                                  color: (daily == true)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              weekly = false;
                              monthly = !monthly;
                              daily = false;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: (monthly == true)
                                  ? Color(0xff32cb95)
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Monthly",
                              style: TextStyle(
                                  color: (monthly == true)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 280),
                    child: Text(
                      "Date & Time",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DateTimePicker(
                    type: DateTimePickerType.dateTime,
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Date',
                    onChanged: (val) {
                      setState(() {
                        xdate = val;
                      });
                    },
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                  if (daily == true)
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Price: ${widget.userDataList.dPrice}",
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  if (monthly == true)
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Price: ${widget.userDataList.mPrice}",
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  if (weekly == true)
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Price: ${widget.userDataList.wPrice}",
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            size: 30,
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
                            size: 30,
                            color: Colors.black45,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff32cb95),
                              fixedSize: const Size(220, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookDetails(
                                        widget.userDataList, xdate)));
                          },
                        ),
                      ],
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
