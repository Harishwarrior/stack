import 'package:flutter/material.dart';

class Styles {
  static double radius = 20;

  static Color titleColor = const Color(0xFF8d9dac);
  static Color subtitleColor = const Color(0xFF4c5059);
  static Color buttonTextColor = const Color(0xffb09899);

  static MaterialColor primaryColor = Colors.indigo;
  static Color backgroundColor = const Color(0xff202132);
  static Color scaffoldBackgroundColor = const Color(0xFF111419);

  static const cardColor1 = Color(0xFF44343e);
  static const cardColor2 = Color(0xFF7c7390);
  static const cardColor3 = Color(0xFF59698b);

  static final BoxDecoration containerDecorationStyle = BoxDecoration(
    color: backgroundColor,
    boxShadow: const [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 8,
      ),
    ],
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(
        radius,
      ),
    ),
  );

  static final BoxDecoration recommendedChipStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: const [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 8,
      ),
    ],
  );

  static final BoxDecoration cardDecorationStyle = BoxDecoration(
    color: backgroundColor,
    boxShadow: const [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 8,
      ),
    ],
    borderRadius: BorderRadius.circular(
      radius,
    ),
  );

  static final BoxDecoration amountSelectionDailStyle = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: const Color(0xFFffe7de),
      width: 10.0,
    ),
  );

  static final BoxDecoration amountSelectionStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20.0),
  );

  static final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    shape: const StadiumBorder(),
    primary: Styles.titleColor,
    side: BorderSide(
      color: Styles.titleColor,
    ),
  );

  static BorderRadiusGeometry buttonBorderRadius = const BorderRadius.vertical(
    top: Radius.circular(20.0),
  );

  static TextStyle titleStyle = TextStyle(
    color: titleColor,
    fontSize: 18.0,
  );
  static TextStyle subtitleStyle = TextStyle(
    color: subtitleColor,
    fontSize: 12.0,
  );

  static const TextStyle textStyleDarkSmall = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontSize: 12.0,
  );
  static const TextStyle textStyleLightBig = TextStyle(
    color: Colors.grey,
  );
  static const TextStyle textStyleMedium = TextStyle(
    color: Colors.white70,
  );

  static const TextStyle interestTextStyle = TextStyle(
    fontSize: 12.0,
    color: Color(0xff9cb491),
  );

  static const TextStyle amountTextStyle = TextStyle(
    fontSize: 26.0,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );
}
