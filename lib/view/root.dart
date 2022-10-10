// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portofolio/controller/generalController.dart';
import 'package:portofolio/resource/appClass.dart';
import 'package:portofolio/view/about/about.dart';
import 'package:portofolio/view/intro/intro.dart';
import 'package:portofolio/view/widget/leftPane.dart';
import 'package:portofolio/view/widget/rightPane.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({super.key});

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final aScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              ref.read(scrollControlProvider.notifier).state = false;
            } else if (direction == ScrollDirection.forward) {
              ref.read(scrollControlProvider.notifier).state = true;
            }
            return true;
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Color(0xff112248),
                    Color(0xff0a192f),
                    Color(0xff020c1b),
                  ]),
            ),
            height: AppClass().getMqHeight(context),
            child: Column(
              children: [
                Consumer(builder: (context, ref, child) {
                  var isScrollingUp = ref.watch(scrollControlProvider);
                  return AnimatedOpacity(
                    opacity: isScrollingUp ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: ActionBar(aScrollController),
                  );
                }),
                Expanded(
                  child: () {
                    ScreenType scrType = AppClass().getScreenType(context);
                    return Row(
                      children: [
                        scrType == ScreenType.mobile ? SizedBox() : LeftPane(),
                        Expanded(
                            flex: 8,
                            child: ListView(
                              controller: aScrollController,
                              children: [
                                AutoScrollTag(
                                    key: ValueKey(0),
                                    controller: aScrollController,
                                    index: 0,
                                    child: IntroContent(aScrollController)),
                                AutoScrollTag(
                                    key: ValueKey(1),
                                    controller: aScrollController,
                                    index: 1,
                                    child: About()),
                                AutoScrollTag(
                                    key: ValueKey(2),
                                    controller: aScrollController,
                                    index: 2,
                                    child: Experience()),
                                AutoScrollTag(
                                    key: ValueKey(3),
                                    controller: aScrollController,
                                    index: 3,
                                    child: Work()),
                                AutoScrollTag(
                                    key: ValueKey(4),
                                    controller: aScrollController,
                                    index: 4,
                                    child: Contact())
                              ],
                            )),
                        scrType == ScreenType.mobile ? SizedBox() : RightPane(),
                      ],
                    );
                  }(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
