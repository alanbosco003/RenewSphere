import 'package:base_flutter/presentation/base_stucture/index.dart';
import 'package:base_flutter/presentation/explore/customers/controllers/customer_controller.dart';
import 'package:base_flutter/presentation/explore/customers/widgets/custom_customer_tab.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class CustomerFilterTab extends ReactiveStateWidget<CustomerController> {
  const CustomerFilterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: UiSizeUtils.getHeightSize(35),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(20)),
        child: Observer(
            listenable: controller.selectedStatus,
            listener: (selectedStatus) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.tabValues.length,
                itemBuilder: (context, index) {
                  var currentTab = controller.tabValues[index];
                  bool isSelected = currentTab == selectedStatus;
                  return GestureDetector(
                    child: CustomTab(
                        currentTab: currentTab, isSelected: isSelected),
                    onTap: () {
                      controller.selectStatus(
                        currentTab,
                      );
                    },
                  );
                },
              );
            }),
      ),
    );
  }
}
