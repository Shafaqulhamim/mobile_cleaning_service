import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/application/productBloc/product_bloc.dart';
import 'package:mobile_cleaning_service/domain/order/order_data.dart';

class BookDetailsCustomer extends StatefulWidget {
  final OrderData orderList;
  const BookDetailsCustomer(this.orderList, {Key? key}) : super(key: key);

  @override
  _BookDetailsCustomerState createState() => _BookDetailsCustomerState();
}

class _BookDetailsCustomerState extends State<BookDetailsCustomer> {
  int _rValue = 0;
  int _cValue = 1;

  void method(int value) {
    setState(() {
      _rValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ProductBloc productBloc = BlocProvider.of<ProductBloc>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Booking"),
        backgroundColor: Color(0xff32cb95),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Ordered By :  ${widget.orderList.ordererName}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "    Phone          :  ${widget.orderList.orderedBy}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "Book ID        :",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 34,
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
                    height: 100,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            widget.orderList.orderID,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            widget.orderList.address,
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
              padding: const EdgeInsets.only(
                  left: 20, top: 30, right: 20, bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   "1 x Cleaner  :",
                          //   style: TextStyle(
                          //       fontSize: 16, fontWeight: FontWeight.bold),
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          // Text(
                          //   "1 Hour          :",
                          //   style: TextStyle(
                          //       fontSize: 16, fontWeight: FontWeight.bold),
                          // ),
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
                          // Text(
                          //   "150 Tk.",
                          //   style: TextStyle(
                          //       fontSize: 16, fontWeight: FontWeight.bold),
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          // Text(
                          //   "   50 Tk.",
                          //   style: TextStyle(
                          //       fontSize: 16, fontWeight: FontWeight.bold),
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "      -0 Tk.         ",
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
              height: 2,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                ),
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
                  widget.orderList.price,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Payment Type : ${widget.orderList.paymentMethod}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Container(
            //   child: Row(
            //     children: <Widget>[
            //       // RadioListTile(
            //       //   value: 1,
            //       //   groupValue: _rValue,
            //       //   onChanged: ( value) {
            //       //     //setState(() {});
            //       //     method(value);
            //       //   },
            //       //   // {
            //       //   //   method(value);
            //       //   // },
            //       //   title: Text('Android'),
            //       // ),

            //       Flexible(
            //         fit: FlexFit.tight,
            //         child: RadioListTile(
            //           value: 1,
            //           groupValue: _rValue,
            //           title: const Text('Cash'),
            //           onChanged: (value) {
            //             setState(() {});
            //           },
            //           activeColor: Colors.red,
            //         ),
            //       ),
            //       Flexible(
            //         fit: FlexFit.loose,
            //         child: RadioListTile(
            //           value: 2,
            //           groupValue: _rValue,
            //           title: const Text('Card'),
            //           onChanged: (value) {
            //             setState(() {});
            //           },
            //         ),
            //       ),
            //       Flexible(
            //         fit: FlexFit.loose,
            //         child: RadioListTile(
            //           value: 3,
            //           groupValue: _rValue,
            //           title: const Text('Bkash'),
            //           onChanged: (value) {
            //             setState(() {});
            //           },
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
