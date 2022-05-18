import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/color.dart';
import '../../../helper/send_data.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          Container(
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/contact.gif",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          elevation: 0,
                          child: Row(
                            children: [
                              Image.asset("assets/images/call.png"),
                              SizedBox(
                                width: width * .01,
                              ),
                              Text(
                                "Call",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: black,
                                  fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          call();
                        },
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          elevation: 0,
                          child: Row(
                            children: [
                              Image.asset("assets/images/whatsapp.png"),
                              SizedBox(
                                width: width * .01,
                              ),
                              Text(
                                "WhatsApp",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: black,
                                  fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          openWhatsapp(context);
                        },
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          elevation: 0,
                          child: Row(
                            children: [
                              Image.asset("assets/images/mail.png"),
                              SizedBox(
                                width: width * .01,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: black,
                                  fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          sendingMails();
                        },
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          elevation: 0,
                          child: Row(
                            children: [
                              Image.asset("assets/images/messenger.png"),
                              SizedBox(
                                width: width * .01,
                              ),
                              Text(
                                "Messenger",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: black,
                                  fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          messenger();
                        },
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          elevation: 0,
                          child: Row(
                            children: [
                              Image.asset("assets/images/map.png"),
                              SizedBox(
                                width: width * .01,
                              ),
                              Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: black,
                                  fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          location();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  TextButton(
                      onPressed: () {
                        webSite();
                      },
                      child: Container(
                        height: height * .06,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: yellow,
                        ),
                        child: Center(
                          child: Text(
                            "Obelix website",
                            style: TextStyle(
                              color: black,
                              fontSize: 24.sp,
                              fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                            ),
                          ),
                        ),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
