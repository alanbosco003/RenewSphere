import 'package:base_flutter/presentation/base_stucture/controllers/base_structure_controller.dart';
import 'package:base_flutter/presentation/base_stucture/widgets/custom_bottom_bar_icon.dart';
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_parents_details.dart';
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
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
                          label: 'Feeds',
                          activeIcon: const Icon(
                            Icons.rss_feed,
                            color: GraphicsColorConsts.green,
                          ),
                          inActiveIcon: const Icon(
                            Icons.rss_feed,
                            color: Colors.grey,
                          )),
                      CustomBottomBarIconWidget(
                          iconDataSelected: AssetConsts.btmNavBarCustomerActive,
                          iconDataUnselected: AssetConsts.btmNavBarCustomer,
                          callback: () {
                            controller.setCurrentPage(1);
                          },
                          isSelected: currentPage == 1,
                          label: 'Discover',
                          activeIcon: const Icon(
                            Icons.travel_explore,
                            color: GraphicsColorConsts.green,
                          ),
                          inActiveIcon: const Icon(
                            Icons.travel_explore,
                            color: Colors.grey,
                          )),
                      CustomBottomBarIconWidget(
                          iconDataSelected: AssetConsts.btmNavBarColrtlActive,
                          iconDataUnselected: AssetConsts.btmNavBarColrtl,
                          callback: () {
                            controller.setCurrentPage(2);
                          },
                          isSelected: currentPage == 2,
                          label: 'Game',
                          activeIcon: const Icon(
                            Icons.gamepad,
                            color: GraphicsColorConsts.green,
                          ),
                          inActiveIcon: const Icon(
                            Icons.gamepad,
                            color: Colors.grey,
                          )),
                      CustomBottomBarIconWidget(
                        iconDataSelected: AssetConsts.btmNavBarLoanActive,
                        iconDataUnselected: AssetConsts.btmNavBarLoan,
                        callback: () {
                          controller.setCurrentPage(3);
                        },
                        isSelected: currentPage == 3,
                        label: 'Profile',
                        activeIcon: const Icon(
                          Icons.person,
                          color: GraphicsColorConsts.green,
                        ),
                        inActiveIcon: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
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
