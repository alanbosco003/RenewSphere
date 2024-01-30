import 'package:base_flutter/presentation/login/login_form_page/index.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {required this.currentTab, required this.isSelected, super.key});
  final String currentTab;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: UiSizeUtils.getWidthSize(10)),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? GraphicsColorConsts.white
              : GraphicsColorConsts.lightGreyForTab,
          border: Border.all(
            color: isSelected
                ? GraphicsColorConsts.oranch
                : GraphicsColorConsts.lightGreyForTab,
          ),
          borderRadius: BorderRadius.circular(UiSizeUtils.getWidthSize(5)),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(UiSizeUtils.getHeightSize(10)),
            child: Text(currentTab,
                style: isSelected
                    ? GraphicsTextStylesConst.textStyleOranch_12_600
                    : GraphicsTextStylesConst.textStyleGrey_12_400),
          ),
        ),
      ),
    );
  }
}
