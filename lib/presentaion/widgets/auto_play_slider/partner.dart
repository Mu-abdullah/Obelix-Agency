import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/lists.dart';

final List<Widget> imageSliders_partner = listOfPartner
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Card(
                color: white,
                elevation: 8,
                shadowColor: black,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Container(
                            height: 10,
                            width: 50,
                            color: yellow,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CachedNetworkImage(
                      imageUrl: item,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
              )),
        ))
    .toList();
