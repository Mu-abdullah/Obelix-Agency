import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/color.dart';
import '../../../constants/lists.dart';
import '../../widgets/services_card/our_services.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Services",
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                        color: yellow),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "We provide a wide range of Services\n",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellow.withOpacity(0.5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "We are schooled in the creativity and proficiency school to offer our clients the ingenuity and innovation.",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                          SizedBox(
                            height: height * .02,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/help.gif",
                              height: height * .35,
                              width: width,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .70,
              width: width,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listOfImage.length,
                itemBuilder: (context, index) => myServices(context,
                    mText: listOfMainText[index], nImage: listOfImage[index]),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10),
              ),
            )
          ],
        ),
      )),
    );
  }
}
