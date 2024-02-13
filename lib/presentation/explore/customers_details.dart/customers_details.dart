import 'package:base_flutter/presentation/explore/customers_details.dart/widgets/address_details.dart';
import 'package:base_flutter/presentation/explore/customers_details.dart/widgets/app_bar.dart';
import 'package:base_flutter/presentation/explore/customers_details.dart/widgets/customerId_lead_source.dart';
import 'package:base_flutter/presentation/explore/customers_details.dart/widgets/customer_page_redirections.dart';
import 'package:base_flutter/presentation/explore/customers_details.dart/widgets/customer_presonal_details.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowAppBar(),
              CustomerIdAndLeadId(),
              CustomerPersonalDetails(),
              AddressDetails(),
              CustomerPageRedirections()
            ],
          ),
        ),
      ),
    );
  }
}
