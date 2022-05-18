import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/color.dart';
import '../../widgets/auto_play_slider/partner.dart';

class Partner extends StatelessWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Obelix Partners",
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                        color: black),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                 
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: yellow),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "We are honored to be with this great Organizations & Companies.",
                            overflow:TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ), SizedBox(
                            height: height * .02,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/partner.gif",
                              height: height * .30,
                              width: width ,
                              fit: BoxFit.fitWidth,
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*.05,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:   Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height *.33,
                          aspectRatio: 16/9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 1),
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: imageSliders_partner,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
