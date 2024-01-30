import 'package:base_flutter/presentation/customers/index.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/widgets/common/get_two_widgets_with_ratio.dart';

class CustomerIdAndLeadId extends StatelessWidget {
  const CustomerIdAndLeadId({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(37)),
      child: Column(
        children: [
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          ),
          GetTwoWidgetsWithRatio(
              widget1: Text(
                "Customer ID",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
              widget2: Text(
                "5e9a5836",
                style: GraphicsTextStylesConst.textStyleBlack_12_600,
              ),
              ratio: 0.5),
          SizedBox(
            height: UiSizeUtils.getHeightSize(14),
          ),
          GetTwoWidgetsWithRatio(
              widget1: Text(
                "User Agent ID",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manjunatha P",
                    style: GraphicsTextStylesConst.textStyleBlack_12_600,
                  ),
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: GraphicsColorConsts.oranch,
                  )
                ],
              ),
              ratio: 0.5),
          SizedBox(
            height: UiSizeUtils.getHeightSize(14),
          ),
          GetTwoWidgetsWithRatio(
              widget1: Text(
                "Lead Source",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
              widget2: Text(
                "Direct Walk-in",
                style: GraphicsTextStylesConst.textStyleBlack_12_600,
              ),
              ratio: 0.5),
          SizedBox(
            height: UiSizeUtils.getHeightSize(14),
          ),
          const Divider(
            thickness: 1,
            color: GraphicsColorConsts.lightGreyForTab,
          )
        ],
      ),
    );
  }
}
