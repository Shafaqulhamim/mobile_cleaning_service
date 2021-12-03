import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/application/productBloc/product_bloc.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/domain/i_order_provider.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:mobile_cleaning_service/view/pages/Booking_cleaner.dart';

class CustomerNotificationScreen extends StatefulWidget {
  final String userData;
  CustomerNotificationScreen(this.userData, {Key? key}) : super(key: key);

  @override
  _CustomerNotificationScreenState createState() =>
      _CustomerNotificationScreenState();
}

class _CustomerNotificationScreenState
    extends State<CustomerNotificationScreen> {
  @override
  void initState() {
    // ProductBloc(context.read<IProductProvider>(), context.read<IAuthProvider>())
    //   ..add(const ProductEvent.sellerOrderList(widget.userData));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProductBloc productBloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<ProductBloc, ProductState>(
        listenWhen: (c, p) => c.orderList != p.orderList,
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          }
          if (state.isSubmitting) {
            EasyLoading.show(status: 'loading...');
          }
          if (!state.isSubmitting && state.error.isEmpty) {
            EasyLoading.dismiss();
          }

          if (state.orderList != null) {
            EasyLoading.showSuccess('Successfully Accepted!');
            // BlocProvider.of<ProductBloc>(context)
            //   ..add(GetOrderDataList(widget.userData));
          }
          // if (state.orderList == null)
          //   ProductBloc(
          //       context.read<IProductProvider>(), context.read<IAuthProvider>())
          //     ..add(ProductEvent.sellerOrderList(widget.userData));
        },
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<ProductBloc>(context)
                ..add(GetCustomerOrderDataList());
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.orderList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => BookDetailsCleaner(
                            //           state.orderList[index])),
                            // );
                          },
                          child: Container(
                            height: 100,
                            padding: EdgeInsets.all(30),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Text(state.orderList[index].ordererName),
                                Text(state.orderList[index].address),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
