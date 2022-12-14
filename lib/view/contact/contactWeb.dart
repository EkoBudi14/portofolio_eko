// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                        fontSize: 15,
                        fontFamily: 'sfmono'),
                  ),
                  Text(
                    ''' What's next?''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 18,
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
                    fontSize: 55,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    Strings.endTxt,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 70),
                    child: InkWell(
                      onTap: () async {
                        // final Email send_email = Email(
                        //   body: 'body of email',
                        //   subject: 'subject of email',
                        //   recipients: ['ekobudiarto140100@gmail.com'],
                        //   cc: ['ekobudiarto140100@gmail.com'],
                        //   bcc: ['ekobudiarto140100@gmail.com'],
                        //   // attachmentPaths: ['/path/to/email_attachment.zip'],
                        //   isHTML: false,
                        // );

                        // await FlutterEmailSender.send(send_email);

                        await launchUrl(Uri.parse('mailto:ekobudiarto140100@gmail.com?subject=Interests&body=Hello%20Eko'));
                      },
                      child: Container(
                        height: AppClass().getMqHeight(context) * 0.09,
                        width: AppClass().getMqWidth(context) * 0.15,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(
                                color: AppColors().neonColor, width: 1.5)),
                        child: Center(
                          child: Row(
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 70,
                    ),
                    child: InkWell(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            "https://wa.me/6281908342094/?text=HellooEkoo"));
                      },
                      child: Container(
                        height: AppClass().getMqHeight(context) * 0.09,
                        width: AppClass().getMqWidth(context) * 0.15,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(
                                color: AppColors().neonColor, width: 1.5)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.contact_page,
                                  color: AppColors().neonColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text('whatsapp',
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
