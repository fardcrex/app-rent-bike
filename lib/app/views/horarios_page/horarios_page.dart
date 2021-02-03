import 'package:flutter/material.dart';

class HorariosPage extends StatelessWidget {
  final List<Widget> listWidget;

  const HorariosPage({
    Key key,
    this.listWidget = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listWidget,
    );
  }
}
