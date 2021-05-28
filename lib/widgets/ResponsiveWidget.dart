import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget xSmallScreen;

  const ResponsiveWidget(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,
      this.xSmallScreen})
      : super(key: key);

  static bool isXSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 500;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 900;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 900 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth >= 900) {
          return mediumScreen ?? largeScreen;
        } else if (constraints.maxWidth < 900 && constraints.maxWidth >= 500) {
          return smallScreen ?? mediumScreen;
        } else {
          return xSmallScreen ?? smallScreen;
        }
      },
    );
  }
}
