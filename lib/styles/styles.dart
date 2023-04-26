import 'package:flutter/material.dart';

const Color backgroundColor = Colors.white;
const Color blackBackgroundColor = Colors.black;
const Color primaryButtonColor = Color.fromRGBO(31, 23, 61, 1);
const Color primaryIconColor = Color.fromRGBO(229, 222, 255, 1);
const Color primaryBlueColor = Colors.blue;
const Color progressBarBackgroundColor = Color.fromRGBO(79, 79, 79, 1);

const Color black = Color(0xff000000);
const Color white = Colors.white;

const LinearGradient defaultThumbGradient = LinearGradient(colors: [
  Color(0xFF000000),
  Color(0xFF000000),
  Color(0xFFAF568F),
  Color(0xFF4A1F3B),
], stops: <double>[
  0.01,
  0.01,
  0.01,
  1.0
], begin: Alignment.topLeft, end: Alignment.bottomRight);

const Color defaultActiveTrackColor = Color(0xFF4A1F3B);

const Color defaultInactiveTrackColor = Color(0xFFE5E5E5);

const Color defaultSliderLabelTextColor = Color(0xFF999999);

const Color luminescenceBackgroundColor = Color(0xff030207);

const Color luminescenceColor = Color(0xff1F173D);

const LinearGradient luminescenceGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffB799FC),
      Color(0xff8854FD),
    ]);

BoxDecoration luminescenceOuterDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    boxShadow: const [
      BoxShadow(color: Color(0xffCEA6F8), blurRadius: 3),
      BoxShadow(color: Color(0xff6E2DF9), blurRadius: 3),
    ],
    // gradient from styles.dart
    gradient: luminescenceGradient);

BoxDecoration luminescenceInnerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(6),
  color: const Color(0xff030207),
);

const BoxDecoration luminescenceBackground =
BoxDecoration(color: Color(0xff030207));

const List<BoxShadow> luminescenceBoxShadow = [
  BoxShadow(color: Color(0xffB799FC), blurRadius: 8),
  BoxShadow(color: Color(0xff8854FD), blurRadius: 8),
];

const Color luminescenceSchedulerSelectedColor = Color(0xff140F27);

const Color luminescenceTextColor = Color(0xffE5DEFF);

const Color activeCheckboxBorderColor = Color(0xff7A7A7A);

/// [Pashwa] [15/12/2022]
const defaultPaletteOfChart = <LinearGradient>[
  LinearGradient(colors: [Color(0xFF864FBF), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFEFB69A), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFEEA4D5), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFC197ED), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFCCBD72), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFF93DBDB), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFF2D6FEE), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFB2E7C3), Color(0xFFFFFFFF)]),
  LinearGradient(colors: [Color(0xFFD28065), Color(0xFFFFFFFF)]),
];

const Color navbarDefaultColor = Color(0xff1F173D);
const Color inactiveTextColor = Color(0xff9E9999);
const Color luminescencePrimaryBoxShadowColor = Color(0xffCEA6F8);

const Color luminescenceSecondaryBoxShadowColor = Color(0xff6E2DF9);
const Color buttonBackgroundColor = Color(0xff1F173D);

const Color disableColor = Color(0xff9E9999);

const Color buttonShadowColor = Color(0xff816CD1);
const Color primaryTextColor = Color(0xffE5DEFF);
const Color defaultIconColor = Color(0xffD3C1FF);

const Color defaultTextColor = Color(0xffE5DEFF);

const Color defaultLuminescenceBackgroundColor =
Color.fromRGBO(124, 92, 246, 0.3);

const Color accountStatusColor = Color(0xffBE1427);

const Color luminescenceBorderColor1 = Color(0xffB799FC);
const Color luminescenceBorderColor2 = Color(0xff8854FD);

const Color listColor = Color(0xff120D24);

const Color navbarColor = Color(0xff1F173D);

const List<Color> legendColor = [
  Color(0xffEFB69A),
  Color(0xff93DBDB),
  Color(0xffF7DEE6),
  Color(0xffEEA4D5),
];

//color for otp component

/// The background color for outlined box.
const Color otpBackGroundColor = Colors.transparent;

/// The border color text field.
const Color otpBorderColor = Colors.black26;

/// The border color of text field when in focus.
const Color otpFocusBorderColor = Colors.blue;

/// The border color of text field when in focus.
const Color otpEnabledBorderColor = Colors.black26;

const Color activeBackgroundColor = Color(0xff2A1F4A);
const Color inactiveBackgroundColor = Color(0xff6F6F6F);
const Color defaultToggleColor = Color(0xffFFFFFF);

const Color inactiveTextColor1 = Color(0xff9E9999);

///gradient border color for the text field
const Color otpGradientBorderColor = Color(0xff030208);

///The text color for the otp
const Color otpTextColor = Color(0xffffffff);

///The border side color for the otp
const Color otpBorderSideColor = Color(0xff8854FD);

///The text field color should be present
const Color otpTextFieldColor = Color(0x00000000);

/// The border color of text field when disabled.
const Color otpErrorBorderColor = Colors.red;

const Color luminescenceIconColor = Color(0xffB799FC);

const Color customRadioColor = Color(0xff0000ff);
const BoxDecoration innerLuminescenceDecoration = BoxDecoration(
  shape: BoxShape.circle,
  color: Color(0xff030207),
);

const BoxDecoration outerLuminescenceDecoration = BoxDecoration(
  shape: BoxShape.circle,
  color: Color(0xff030207),
  gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xffB799FC),
        Color(0xff8854FD),
      ]),
  boxShadow: [
    BoxShadow(color: Color(0xffCEA6F8), blurRadius: 3),
    BoxShadow(color: Color(0xff6E2DF9), blurRadius: 3),
  ],
);

const FontWeight stepFooterFontWeight = FontWeight.bold;

const multiStepFormFooterLuminescenceBoxShadow = [
  BoxShadow(
    color: Color(0xffCEA6F8),
    blurRadius: 1,
    offset: Offset(0, -3),
  ),
  BoxShadow(
    color: Color(0xff6E2DF9),
    blurRadius: 1,
    offset: Offset(0, -3),
  ),
];
const Color primaryRedAccentColor = Colors.redAccent;
const Color primaryGreenColor = Colors.green;
const Color primaryBlueAccentColor = Colors.blue;

const Color dotDecoratorColor = Color(0xffB799FC);
const Color dotDecoratorActiveColor = Color(0xff7C4DFF);

const Color transparent = Colors.transparent;

const Color textfieldPasswordColor = Color(0XFFCCCCCC);

// border radius for navbar
const BorderRadius navbarBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(20),
  topRight: Radius.circular(20),
);
const BorderRadius navbarHorizontalBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(20),
  bottomLeft: Radius.circular(20),
);
const BorderRadius navbarOptionBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(8.0),
  topLeft: Radius.circular(8.0),
);

// default heights and widths
const double defaultHeightForLogo = 50.0;
const double defaultWidthForLogo = 50.0;

// screen sizes
const int desktopScreenSize = 1100;
// maximum mobile screen width
const maxMobileScreenWidth = 650;

//loader icon text style
const TextStyle loaderIconStyle =
TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
const ratingIconColor = Color(0xffB799FC);

const Color luminescenceTextNotSelectedColor = Color(0xff9E9999);

const Color luminescenceTabSelectedColor = Color(0xff1E173C);

const Color luminescenceTabNotSelectedColor = Color(0xff030207);

const Color tabNotSelectedColor = Color(0xff6F6F6F);

const Color defaultIconColorScheduler = Color(0xff9E9999);
