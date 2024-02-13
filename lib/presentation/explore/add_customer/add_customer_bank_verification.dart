import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/widgets/splash_screen/basic_splash_screen.dart';

class BankVerification extends StatefulWidget {
  const BankVerification({super.key});

  @override
  State<BankVerification> createState() => _BankVerifiactionState();
}

class _BankVerifiactionState extends State<BankVerification> {
  @override
  initState() {
    super.initState();
    // Delay navigation after 2 seconds (simulating a delayed action)
    Future.delayed(const Duration(seconds: 2), () {
      // Perform navigation after delay
      Routes.of(context).toLocationAddCustomerBankVerified();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CustomBasicSplash(
      title: GraphicsStringConsts.bankVerificationTitle,
      subTitle: GraphicsStringConsts.bankVerificationSubTtile,
    );
  }
}
