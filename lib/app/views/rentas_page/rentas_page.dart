import 'package:app_rent_bike/app/widgets/imagen_rentas_empty.dart';
import 'package:flutter/material.dart';

class RentasPage extends StatelessWidget {
  final List<Widget> listWidget;

  const RentasPage({Key key, this.listWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listWidget.isEmpty
        ? const ImagenRentasEmpty()
        : ListView(
            children: listWidget,
          );
  }
}
