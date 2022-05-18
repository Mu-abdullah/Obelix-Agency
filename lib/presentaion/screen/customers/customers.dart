import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/color.dart';
import '../../widgets/auto_play_slider/customers.dart';

class Customers extends StatelessWidget {
  const Customers({Key? key}) : super(key: key);

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
                    "Obelix Customer",
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                        color: yellow),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: black),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Our customers are our closest friends, because we listen & talk to them, We want to make them always satisfied.",
                            overflow:TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ), SizedBox(
                            height: height * .02,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/customer.gif",
                              height: height * .30,
                              width: width ,
                              fit: BoxFit.fitWidth,
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*.02,),
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
                          reverse: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 1),
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: imageSliders_customers,
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
