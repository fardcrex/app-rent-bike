import 'package:flutter/material.dart';

class ImagenRentasEmpty extends StatelessWidget {
  const ImagenRentasEmpty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/bicycle-man.png'),
              const SizedBox(height: 25),
              Text('No hay rentas', style: getTextStyle(context)),
            ],
          ),
        ),
      ),
    );
  }

  double get _padding => 15.0;

  TextStyle getTextStyle(BuildContext context) => Theme.of(context).textTheme.bodyText2.copyWith(
        color: Theme.of(context).focusColor,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );
}
