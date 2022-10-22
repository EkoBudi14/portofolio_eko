import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/resource/appClass.dart';

import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactTab extends StatefulWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  State<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''04.''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 14,
                        fontFamily: 'sfmono'),
                  ),
                  Text(
                    '''My Contact''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 16,
                        fontFamily: 'sfmono'),
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      '''My Contact''',
                      style: TextStyle(
                          color: AppColors().neonColor,
                          fontSize: 18,
                          fontFamily: 'sfmono'),
                    ),
                    Text(
                      '''My Contact''',
                      style: TextStyle(
                          color: AppColors().neonColor,
                          fontSize: 18,
                          fontFamily: 'sfmono'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '''Built & Developed by Eko Budiarto''',
                style: TextStyle(
                    color: AppColors().textColor,
                    fontSize: 12,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Jakarta - Indonesia''',
                  style: TextStyle(
                      color: AppColors().neonColor,
                      fontSize: 12,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
