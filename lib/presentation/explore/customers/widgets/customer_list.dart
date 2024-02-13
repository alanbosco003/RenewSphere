import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:base_flutter/presentation/explore/customers/widgets/customer_tile.dart';
import 'package:flutter/material.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return CustomerTile(
            callback: () {
              Routes.of(context).toLocationBaseCustomerDetailspage();
            },
          );
        },
      ),
    );
  }
}
