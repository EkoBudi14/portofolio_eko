import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/view/work/workMobile.dart';
import 'package:portofolio/view/work/workTab.dart';
import 'package:portofolio/view/work/workWeb.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: WorkTab(),
      webView: WorkWeb(),
      mobileView: WorkMobile(),
    );
  }
}