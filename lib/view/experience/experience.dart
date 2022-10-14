// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/view/experience/experienceMobile.dart';
import 'package:portofolio/view/experience/experienceTab.dart';
import 'package:portofolio/view/experience/experienceWeb.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: ExperienceWeb(),
      mobileView: ExperienceMobile(),
      tabView: ExperienceTab(),
    );
  }
}