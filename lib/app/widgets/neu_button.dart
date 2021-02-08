import 'package:flutter/material.dart';

import './styles.dart';

extension WidgetOnClick on Widget {
  Widget onClick(VoidCallback onClick) => GestureDetector(
        onTap: onClick,
        child: this,
      );
}

class NMButton extends StatelessWidget with StyleAppMixin {
  final bool down;
  final Widget icon;
  final VoidCallback onClick;
  final double padding;
  final bool isSquare;
  final int duration;
  final Curve curve;
  const NMButton({
    this.down,
    this.icon,
    this.onClick,
    this.padding = 12,
    this.isSquare = false,
    this.duration = 1200,
    this.curve = Curves.easeOutQuint,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: curve,
      duration: Duration(milliseconds: duration),
      width: isSquare ? 60 : 70,
      height: 60,
      padding: EdgeInsets.symmetric(
        vertical: padding,
      ),
      decoration: down ? nMboxInvert : nMbox,
      child: Center(
        child: icon,
      ),
    ).onClick(onClick);
  }
}

class NMButtonWithState extends StatefulWidget {
  final Widget icon;
  final VoidCallback onClick;
  const NMButtonWithState({Key key, this.icon, this.onClick}) : super(key: key);

  @override
  _NMButtonWithStateState createState() => _NMButtonWithStateState();
}

class _NMButtonWithStateState extends State<NMButtonWithState> {
  bool _down = false;
  int _duration = 450;

  Future<void> _doAnimate() async {
    setState(() => _down = true);
    await Future.delayed(const Duration(milliseconds: 500));
    _duration = 200;
    setState(() => _down = false);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return NMButton(
      down: _down,
      onClick: () async {
        await _doAnimate();
        widget.onClick();
      },
      curve: Curves.linear,
      duration: _duration,
      icon: widget.icon,
      isSquare: true,
      padding: 16,
    );
  }
}
