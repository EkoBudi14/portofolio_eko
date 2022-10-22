import 'package:flutter/material.dart';
import 'package:portofolio/resource/styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/workModel.dart';

enum ScreenType { mobile, tab, web }

class AppClass {
  static final AppClass _mAppClass = AppClass._internal();
  static BuildContext? lastContext;
  ScrollController controller = ScrollController();

  /* URL */
  static final resumeDownloadURL =
      '''https://drive.google.com/drive/folders/1QUDhWOgSh9H-oUczvYljs27ys7sFhfqU?usp=sharing''';

  static final gitSafeC19 = '''https://github.com/EkoBudi14/portofolio''';

  static final gitFoodsApps = '''https://github.com/EkoBudi14/foodapps''';

  // static final gitHermarts = '''https://github.com/jeeva-HBK/SafeC19''';
  static final gitWtIot = '''https://play.google.com/store/apps/details?id=kemenkes.mhealth.nakes''';
  static final gitAutoStabilizer =
      '''https://github.com/EkoBudi14/e-commerce-bwa-shamo''';
  static final gitPAT = '''https://github.com/EkoBudi14/laravel-inventory''';

  // static final gitAVM = '''https://github.com/jeeva-HBK/SafeC19''';

  List<WorkModel> projectList = [
    WorkModel(
        projectTitle: "FLUTIX AAP",
        img: "assets/Movies.png",
        projectContent:
            "this is a ticket booking application, the available features can choose a seat, top up, choose the language used, choose a place to watch and display tickets in the form of a barcode",
        tech1: "Flutter",
        tech2: "Firebase",
        tech3: "Java"),
    WorkModel(
        projectTitle: "FOODMARKET APP",
        img: '',
        projectContent:
            "this application is a food ordering application, it can be taken using the Laravel api and in the payment using midtrans",
        tech1: "Flutter",
        tech2: "API",
        tech3: "Midtrans"),
    WorkModel(
      projectTitle: "MHEALTH-NAKES",
      img: '',
      projectContent:
          '''This is a mobile application that functions to make it easier for puskesmas health workers to monitor public health by looking at 12 PISK indicators, knowing what health schedules are being implemented by the puskesmas. This application can also provide special notes to each community when conducting surveys conducted by health workers directly. The mHealth application also not only sees and monitors the public but can also get information such as news and health information tips directly from the ministry of health. This application has been uploaded to the playstore.''',
      tech1: "Flutter",
      tech2: "API",
    ),
    WorkModel(
        projectTitle: "MHEALTH-BENEFICIER",
        img: '',
        projectContent:
            '''this is a mobile application which is a project from the ministry of health where this application is integrated with the PISPK system, this application is useful for monitoring individual health and family health. This application has features, namely notifications and firebase messages, reminders of the date of activities held by the puskesmas, and health information for each family.''',
        tech1: "Flutter",
        tech2: "API",
        tech3: "Firebase"),
    WorkModel(
        projectTitle: "SHAMO APP",
        img: '',
        projectContent:
            '''PCB testing tool that helps QC/QA employees of rax-tech international, records the production flow and work strategy of every employee and automatically generates and stores some of the records as reports in the cloud.''',
        tech1: "Flutter",
        tech2: "API",
        tech3: "Firebase"),
    WorkModel(
        projectTitle: "WEB INVENTORY",
        img: '',
        projectContent:
            '''It Acts as a display of a beverage vending machine that can perform several operations like Brewing, Dispensing, Cleaning drums, and several other operations.''',
        tech1: "PHP",
        tech2: "LARAVEL"),
  ];

  factory AppClass() {
    return _mAppClass;
  }

  AppClass._internal();

  getMqWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  getMqHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  showSnackBar(String msg, {BuildContext? context}) {
    ScaffoldMessenger.of(context ?? lastContext!)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  ScreenType getScreenType(BuildContext context) {
    double scrWidth = getMqWidth(context);
    if (scrWidth > 915) {
      return ScreenType.web;
    } else if (scrWidth < 650) {
      return ScreenType.mobile;
    }
    return ScreenType.tab;
  }

  downloadResume(context) async {
    await launchUrl(Uri.parse(AppClass.resumeDownloadURL));
  }

  alertDialog(context, title, msg) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: Text(title, style: TxtStyle().boldWhite(context)),
                content: Text(msg),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () => Navigator.pop(context),
                      child: Text('Okay'))
                ]));
  }
}
