import 'package:flutter/material.dart';

/* Color mC = const Color(0xfffff9f9);
Color mCL = const Color(0xfffff5f5); */
Color mC = const Color(0xffF1F6FA);
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.060);
Color mCC = const Color(0xff78D67F);
Color mCR = Colors.red[200];
Color fCD = Colors.blueGrey[800];
Color fCL = const Color(0xff939DB0);

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}

mixin StyleAppMixin {
  BoxDecoration get nMbox => BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mC,
        boxShadow: [
          BoxShadow(
            color: mCD,
            offset: const Offset(6, 6),
            blurRadius: 4,
          ),
          BoxShadow(
            color: mCL,
            offset: const Offset(-5, -5),
            blurRadius: 4,
          ),
        ],
      );

  BoxDecoration get nMboxInvert => BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // gradient: ConcaveDecoration(),

        boxShadow: [
          BoxShadow(color: mC.mix(Colors.black, .1), spreadRadius: -2),
          BoxShadow(color: mCL, offset: const Offset(2, 2), spreadRadius: -3),
          BoxShadow(color: mC.mix(Colors.black, .03), blurRadius: 3, spreadRadius: -2),
        ],
      );
  BoxDecoration get nMboxEmpty => nMboxInvert.copyWith(color: mCR);

  BoxDecoration get nMboxInvertActive => nMboxInvert.copyWith(color: mCC);

  BoxDecoration get nMbtn => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: mC,
        boxShadow: [
          BoxShadow(
            color: mCD,
            offset: const Offset(2, 2),
            blurRadius: 2,
          )
        ],
      );
}
