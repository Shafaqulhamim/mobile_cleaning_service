import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_cleaning_service/application/productBloc/product_bloc.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/domain/i_order_provider.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    // ProductBloc(context.read<IProductProvider>(), context.read<IAuthProvider>())
    //   ..add(const ProductEvent.sellerOrderList());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          if (state.orderList == null)
            ProductBloc(
                context.read<IProductProvider>(), context.read<IAuthProvider>())
              ..add(const ProductEvent.sellerOrderList());
        },
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.orderList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(state.orderList[index].address),
                );
              });
        },
      ),
    );
  }
}
