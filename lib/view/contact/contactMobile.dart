// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/resource/appClass.dart';

import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
                        fontSize: 12,
                        fontFamily: 'sfmono'),
                  ),
                  Text(
                    ''' What's next?''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 14,
                        fontFamily: 'sfmono'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Message Me',
                  style: GoogleFonts.robotoSlab(
                    color: AppColors().textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.55,
                  child: Text(
                    Strings.endTxt,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 70),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: AppClass().getMqHeight(context) * 0.08,
                        width: AppClass().getMqWidth(context) * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(
                                color: AppColors().neonColor, width: 1.5)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email_outlined,
                                  color: AppColors().neonColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Via Email',
                                  style: TextStyle(
                                      color: AppColors().neonColor,
                                      fontSize: 13,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'sfmono')),
                              SizedBox(
                                width: 5,
                              ),
                              Text('ekobudiarto140100@gmail.com',
                                  style: TextStyle(
                                      color: AppColors().neonColor,
                                      fontSize: 13,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'sfmono')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 70,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: AppClass().getMqHeight(context) * 0.08,
                        width: AppClass().getMqWidth(context) * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(
                                color: AppColors().neonColor, width: 1.5)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.contact_page,
                                  color: AppColors().neonColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Via Whatsapp',
                                  style: TextStyle(
                                      color: AppColors().neonColor,
                                      fontSize: 13,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'sfmono')),
                              SizedBox(
                                width: 5,
                              ),
                              Text('081908342094',
                                  style: TextStyle(
                                      color: AppColors().neonColor,
                                      fontSize: 13,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'sfmono')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
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
