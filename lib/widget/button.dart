import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Widget? child;
  final Color color;
  final Size size;
  final VoidCallback onClick;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const Button({
    required this.onClick,
    this.child,
    this.color = Colors.transparent,
    this.size = const Size(0, 0),
    this.padding,
    this.margin,
    super.key
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double _colorAlpha = 1;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => _colorAlpha = 0.7),
      onExit: (event) => setState(() => _colorAlpha = 1.0),
      child: GestureDetector(
        onTap: widget.onClick,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeOutQuad,
          width: widget.size.width,
          height: widget.size.height,
          padding: widget.padding,
          margin: widget.margin,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.color.withAlpha((_colorAlpha * 255).toInt()),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}