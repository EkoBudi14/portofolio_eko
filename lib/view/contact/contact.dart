// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/view/contact/contactMobile.dart';
import 'package:portofolio/view/contact/contactTab.dart';
import 'package:portofolio/view/contact/contactWeb.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: ContactWeb(),
      tabView: ContactTab(),
      mobileView: ContactMobile(),
    );
  }
}
