import 'package:base_flutter/presentation/base_stucture/controllers/base_structure_controller.dart';
import 'package:base_flutter/presentation/base_stucture/widgets/custom_bottom_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:reactiv/reactiv.dart';

class CustomBottomBarWidget
    extends ReactiveStateWidget<BaseStructureController> {
  const CustomBottomBarWidget({Key? key}) : super(key: key);

  // @override
  // BindController<BaseStructureController>? bindController() {
  //   return BindController(controller: BaseStructureController());
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(
        listenable: controller.currentPage, // Listen to the reactive variable
        listener: (currentPage) {
          return BottomAppBar(
            elevation: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: UiSizeUtils.getHeightSize(78),
                  decoration: const BoxDecoration(
                    color: Color(0xff013D7C),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomBottomBarIconWidget(
                        iconDataSelected: AssetConsts.btmNavBarHomeActive,
                        iconDataUnselected: AssetConsts.btmNavBarHome,
                        callback: () {
                          controller.setCurrentPage(0);
                        },
                        isSelected: currentPage == 0,
                      ),
                      CustomBottomBarIconWidget(
                        iconDataSelected: AssetConsts.btmNavBarCustomerActive,
                        iconDataUnselected: AssetConsts.btmNavBarCustomer,
                        callback: () {
                          controller.setCurrentPage(1);
                        },
                        isSelected: currentPage == 1,
                      ),
                      CustomBottomBarIconWidget(
                        iconDataSelected: AssetConsts.btmNavBarColrtlActive,
                        iconDataUnselected: AssetConsts.btmNavBarColrtl,
                        callback: () {
                          controller.setCurrentPage(2);
                        },
                        isSelected: currentPage == 2,
                      ),
                      CustomBottomBarIconWidget(
                        iconDataSelected: AssetConsts.btmNavBarLoanActive,
                        iconDataUnselected: AssetConsts.btmNavBarLoan,
                        callback: () {
                          controller.setCurrentPage(3);
                        },
                        isSelected: currentPage == 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
