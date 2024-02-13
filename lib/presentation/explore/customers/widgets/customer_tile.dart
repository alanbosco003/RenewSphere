import 'package:base_flutter/presentation/login/login_form_page/index.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_container_decoration.dart';
import 'package:graphics/graphics_consts/graphics_text_span.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/buttons/forward_icon.dart';
import 'package:graphics/widgets/buttons/icons_with_rounded_border.dart';
import 'package:graphics/widgets/text/custom_rich_text.dart';

class CustomerTile extends StatelessWidget {
  const CustomerTile({required this.callback, super.key});
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // PADDING FROM THE SIDE
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(20)),
      child: GestureDetector(
        onTap: callback,
        child: Container(
          decoration: GrpahicsDecoration.customerTileDecoration,
          height: UiSizeUtils.getHeightSize(64),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: UiSizeUtils.getWidthSize(180),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Prabhu",
                        style: GraphicsTextStylesConst.textStyleBlack_12_600),
                    CustomRichText(textSpans: customTextSpans),
                  ],
                ),
              ),
              const Row(
                children: [
                  IconsWithRoundedBorder(
                    iconPath: AssetConsts.iconMessage,
                  ),
                  IconsWithRoundedBorder(
                    iconPath: AssetConsts.iconCall,
                  ),
                  ForwardIcon()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
