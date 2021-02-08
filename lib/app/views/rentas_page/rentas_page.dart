import 'package:flutter/material.dart';

class RentasPage extends StatelessWidget {
  final List<Widget> listWidget;

  const RentasPage({Key key, this.listWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listWidget.isEmpty
        ? Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/bicycle-man.png'),
                    const SizedBox(height: 25),
                    Text(
                      'No hay rentas',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Theme.of(context).focusColor, fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          )
        : ListView(
            children: listWidget,
          );
  }
}
