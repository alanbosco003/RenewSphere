import 'package:flutter/material.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

enum IconPosition { left, right }

class GradientElevatedButton extends StatefulWidget {
  const GradientElevatedButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.borderRadius = const BorderRadius.all(Radius.circular(5)),
    this.elevation,
    this.iconPosition = IconPosition.left,
    this.minHeight = kMinInteractiveDimension,
    this.activeColor,
    this.activeGradient,
  })  : icon = null,
        assert(activeColor == null || activeGradient == null,
            'Both activeColor and activeGradient you can not pass'),
        super(key: key);

  const GradientElevatedButton.icon({
    Key? key,
    this.onPressed,
    required this.text,
    this.borderRadius = const BorderRadius.all(Radius.circular(5)),
    required this.icon,
    this.elevation,
    this.iconPosition = IconPosition.left,
    this.minHeight = kMinInteractiveDimension,
    this.activeColor,
    this.activeGradient,
  })  : assert(activeColor == null || activeGradient == null,
            'Both activeColor and activeGradient you can not pass'),
        assert(icon != null,
            'you can not pass null icon in this, try GradientElevatedButton()'),
        super(key: key);

  final Function()? onPressed;
  final String text;
  final BorderRadius borderRadius;
  final Widget? icon;
  final double? elevation;
  final double minHeight;
  final IconPosition iconPosition;
  final Color? activeColor;
  final Gradient? activeGradient;

  @override
  State<GradientElevatedButton> createState() => _GradientElevatedButtonState();
}

class _GradientElevatedButtonState extends State<GradientElevatedButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    bool isDisabled = widget.onPressed == null || isLoading;
    return GestureDetector(
      onTap: isLoading
          ? null
          : () async {
              setState(() => isLoading = true);
              await widget.onPressed?.call();
              if (mounted) setState(() => isLoading = false);
            },
      child: Material(
        elevation: isDisabled ? 0 : widget.elevation ?? 2,
        borderRadius: widget.borderRadius,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 255, 188, 136).withOpacity(0.7),
                spreadRadius: 6,
                blurRadius: 19,
                offset: const Offset(2, 8), // changes position of shadow
              ),
            ],
            gradient: isDisabled
                ? LinearGradient(colors: [
                    widget.activeColor ?? const Color(0xFFFC9A4E),
                    widget.activeColor ?? const Color(0xFFFF7000),
                  ])
                : widget.activeGradient ??
                    LinearGradient(colors: [
                      widget.activeColor ?? const Color(0xFFFC9A4E),
                      widget.activeColor ?? const Color(0xFFFF7000),
                    ]),
            borderRadius: widget.borderRadius,
          ),
          constraints: BoxConstraints(
              minWidth: double.infinity, minHeight: widget.minHeight),
          height: kMinInteractiveDimension,
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontSize: UiSizeUtils.getFontSize(14),
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600) ??
                TextStyle(
                    fontSize: UiSizeUtils.getFontSize(14),
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600),
            child: (() {
              final txtWidget = Text(widget.text, textScaleFactor: 1.14286);
              if (isLoading) {
                return const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 1,
                  ),
                );
              } else if (widget.icon != null) {
                return Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: (widget.iconPosition == IconPosition.left)
                      ? [widget.icon!, txtWidget, const SizedBox.shrink()]
                      : [const SizedBox.shrink(), txtWidget, widget.icon!],
                );
              } else {
                return txtWidget;
              }
            }()),
          ),
        ),
      ),
    );
  }
}
