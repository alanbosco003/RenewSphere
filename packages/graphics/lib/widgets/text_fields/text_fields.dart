import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.maxLines = 1,
    this.onChanged,
    this.controller,
    this.initialValue,
    this.isDisabled = false,
    this.hintText,
    this.validator,
    this.onSubmitted,
    this.obscureText = false,
    this.decoration,
    this.labelText,
    this.title,
    this.prefixText,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.borderRadius,
    this.bordercolor,
  }) : super(key: key);

  final int maxLines;
  final String? initialValue;
  final String? hintText;
  final bool isDisabled;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final InputDecoration? decoration;
  final String? labelText;
  final String? prefixText;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final String? title;
  final double? borderRadius;
  final Color? bordercolor;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: GraphicsTextStylesConst.textStyleGrey_12_600,
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          keyboardType: TextInputType.text,
          textCapitalization: widget.textCapitalization,
          maxLines: widget.maxLines,
          initialValue: widget.initialValue,
          readOnly: widget.isDisabled,
          onChanged: widget.onChanged,
          controller: widget.controller,
          validator: widget.validator,
          obscureText: widget.obscureText && !showPassword,
          onFieldSubmitted: widget.onSubmitted,
          inputFormatters:
              widget.textCapitalization == TextCapitalization.characters
                  ? [UpperCaseTextFormatter()]
                  : null,
          decoration: widget.decoration ??
              InputDecoration(
                labelText: widget.labelText,
                prefixText: '${widget.prefixText ?? ''} ',
                fillColor: GraphicsColorConsts.white,
                filled: true,
                suffixIcon: widget.suffixIcon ??
                    (widget.obscureText
                        ? GestureDetector(
                            child: Icon(showPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onTap: () =>
                                setState(() => showPassword = !showPassword),
                          )
                        : null),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius ?? 4.0)),
                  borderSide: const BorderSide(
                    color: GraphicsColorConsts.lightGrey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius ?? 4.0)),
                  borderSide: const BorderSide(
                    color: GraphicsColorConsts.lightGrey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius ?? 4.0)),
                  borderSide: BorderSide(
                    color: widget.bordercolor ?? GraphicsColorConsts.lightGrey,
                  ),
                ),
                hintText: widget.hintText,
                hintStyle: GraphicsTextStylesConst.textStyleBlack_12_400,
                isDense: true,
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              ),
        ),
      ],
    );
  }
}

/* Alternative Code snippets you could use  : -- 

  PLEASE ADD ALL'em HERE : ---

  1) TO RENDER SVG ASSETS 
                            // child: SvgAsset(
                            //   // color: Colors.red,
                            //   asset: showPassword
                            //       ? AssetConsts.showPassword
                            //       : AssetConsts.hidePassword,
                            //   package: AssetConsts.package,
                            // ),

  2) Prefix widgets

   // prefixIcon:  prefixIcon,
   // suffix: widget.suffixIcon,
   // prefix: Text('+92'),



                          END  */