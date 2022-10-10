// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/view/about/aboutMobile.dart';
import 'package:portofolio/view/about/aboutTab.dart';
import 'package:portofolio/view/about/aboutWeb.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: AboutWeb(),
      tabView: AboutTab(),
      mobileView: AboutMobile(),
    );
  }
}