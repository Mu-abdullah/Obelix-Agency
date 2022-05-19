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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: black,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                Text(
                  "Obelix ",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                      color: yellow),
                ),
                Text(
                  "Agency",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                        connect(
                            leading: Image.asset(
                              "assets/images/call.png",
                              height: height * .05,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                            text: "Call",
                            onTap: () {
                              call();
                            }),
                        SizedBox(
                          height: height * .01,
                        ),
                        connect(
                          leading: Image.asset(
                            "assets/images/whatsapp.png",
                            height: height * .05,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          text: "WhatsApp",
                          onTap: () {
                            openWhatsapp(context);
                          },
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        connect(
                          leading: Image.asset(
                            "assets/images/mail.png",
                            height: height * .05,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          text: "Email",
                          onTap: () {
                            sendingMails();
                          },
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        connect(
                          leading: Image.asset(
                            "assets/images/messenger.png",
                            height: height * .05,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          text: "Messenger",
                          onTap: () {
                            messenger();
                          },
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        connect(
                          leading: Image.asset(
                            "assets/images/map.png",
                            height: height * .05,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          text: "Location",
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
                ),
              )),
        ],
      ),
    );
  }

  Widget connect({
    required Widget trailing,
    required Widget leading,
    required String text,
    required Function() onTap,
  }) {
    return ListTile(
      onTap: onTap,
      trailing: trailing,
      leading: leading,
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18.sp,
          color: black,
          fontFamily: 'Berlin-Sans-FB-Demi-Bold',
        ),
      ),
    );
  }
}
