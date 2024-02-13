import 'package:base_flutter/presentation/login/login_form_page/index.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';

class CustomSelectionButton extends StatefulWidget {
  final List<String> options;
  final Function(String)? onChanged;

  const CustomSelectionButton({Key? key, required this.options, this.onChanged})
      : super(key: key);

  @override
  _CustomSelectionButtonState createState() => _CustomSelectionButtonState();
}

class _CustomSelectionButtonState extends State<CustomSelectionButton> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    final totalOptions = widget.options.length;
    final rowCount = (totalOptions / 3).ceil();
    final rowSpacing = 8.0 * (rowCount - 1);
    final totalHeight = 40.0 * rowCount + rowSpacing;

    return SizedBox(
      height: totalHeight,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: 3 / 1,
        ),
        itemCount: totalOptions,
        itemBuilder: (BuildContext context, int index) {
          return buildOptionButton(widget.options[index]);
        },
      ),
    );
  }

  Widget buildOptionButton(String option) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(
              option); // Call the onChanged callback with the selected option
        }
      },
      child: Container(
        height: 40.0,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: selectedOption == option
              ? GraphicsColorConsts.blueBGSelected
              : Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: selectedOption == option
                ? GraphicsColorConsts.selectedOptionBorder
                : GraphicsColorConsts.lightGrey,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(option,
              style: selectedOption == option
                  ? GraphicsTextStylesConst.textStyleBlue_12_600
                  : GraphicsTextStylesConst.textStyleBlack_12_400),
        ),
      ),
    );
  }
}
