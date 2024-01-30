import 'package:base_flutter/infrastructure/navigation/navigation.dart';

import '../index.dart';

class Customer extends ReactiveStateWidget<CustomerController> {
  const Customer({super.key});
  @override
  BindController<CustomerController>? bindController() {
    return BindController(
        controller: () => CustomerController(), autoDispose: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const ShowAppBar(),
            const CustomersSearchBar(),
            const CustomerFilterTab(),
            SizedBox(
              height: UiSizeUtils.getHeightSize(22),
            ),
            const CustomerList()
          ],
        ),
        floatingActionButton: CustomFloatingButton(onpressed: () {
          Routes.of(context).toLocationAddCustomerKYC();
          Logger.info("Pressed floating button");
        }),
      ),
    );
  }
}
