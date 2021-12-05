import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/application/productBloc/product_bloc.dart';
import 'package:mobile_cleaning_service/customer_dash.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/domain/order/order_data.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:mobile_cleaning_service/view/performance.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

class BookDetails extends StatefulWidget {
  final UserData userDataList;
  final String xdate;
  final int total;
  const BookDetails(this.userDataList, this.xdate, this.total, {Key? key})
      : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  String textMethod = "cash";
  bool selection1 = true;
  bool selection2 = false;
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
        title: Text("Book Details"),
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Color(0xff32cb95),
      ),
      body: BlocListener<ProductBloc, ProductState>(
        listenWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting ||
            p.error != c.error ||
            p.isSubmitted != c.isSubmitted,
        listener: (context, state) {
          EasyLoading.dismiss();
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isSubmitting) {
            EasyLoading.show(status: 'loading...');
          } else if (state.isSubmitted) {
            EasyLoading.showSuccess('Order Submitted!');
            BlocListener<AuthBloc, AuthState>(
              listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
              listener: (context, state) {
                if (state.isAuthenticated &&
                    state.userData.isCleaner == false) {
                  Logger().i(state.userData.isCleaner);
                  AuthBloc(context.read<IAuthProvider>())
                    ..add(const AuthEvent.getUserList());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomerDash(state.userDataList)),
                  );
                }
              },
              child: Scaffold(
                body: Welcome(),
              ),
            );

            // TODO: implement listener
          }
        },
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          child: BlocConsumer<AuthBloc, AuthState>(
            listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 20, top: 50),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 150,
                          child: Column(
                            children: [
                              // Text(
                              //   "Book ID       :",
                              //   style: TextStyle(
                              //       fontSize: 16, fontWeight: FontWeight.bold),
                              // ),
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
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 30),
                              //   child: Text(
                              //     "A567407",
                              //     style: TextStyle(
                              //         fontSize: 16,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "${state.userData.address}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                                //   "Fixed Wage :",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                // Text(
                                //   "Per Hour      :",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Promo          :",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                                //   "200Tk.",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                // Text(
                                //   "100Tk.",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "    0 Tk.         ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        widget.total.toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
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
                            selected: selection1,
                            value: 1,
                            groupValue: _rValue,
                            title: const Text('Cash'),
                            onChanged: (value) {
                              setState(() {
                                if (textMethod == "Bkash") {
                                  textMethod = "cash";
                                  selection1 = true;
                                  selection2 = false;
                                }
                              });
                            },
                            selectedTileColor: Colors.green[50],
                            activeColor: Colors.red,
                          ),
                        ),

                        Flexible(
                          fit: FlexFit.loose,
                          child: RadioListTile(
                            selectedTileColor: Colors.green[50],
                            selected: selection2,
                            value: 3,
                            groupValue: _rValue,
                            title: const Text('Bkash'),
                            onChanged: (value) {
                              setState(() {
                                if (textMethod == "cash") {
                                  textMethod = "Bkash";
                                  selection1 = false;
                                  selection2 = true;
                                }
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                    onPressed: () {
                      productBloc.add(PostOrderData(OrderData(
                          widget.userDataList,
                          "",
                          "",
                          "pending",
                          widget.userDataList.address,
                          textMethod,
                          widget.xdate,
                          widget.userDataList.phoneNumber,
                          widget.total.toString(),
                          "")));
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
