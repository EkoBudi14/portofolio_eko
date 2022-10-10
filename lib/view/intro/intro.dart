import 'package:flutter/material.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/view/intro/introMobile.dart';
import 'package:portofolio/view/intro/introTab.dart';
import 'package:portofolio/view/intro/introWeb.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class IntroContent extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroContent(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroContent> createState() => _IntroContentState();
}

class _IntroContentState extends State<IntroContent> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: IntroTab(widget.aScrollController),
      mobileView: IntroMobile(widget.aScrollController),
      webView: IntroWeb(widget.aScrollController),
    );
  }
}
