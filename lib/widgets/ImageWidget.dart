import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_ivalley/utils/AssetsRoutes.dart';

ImageWidget(String url,
    {double? height, double? width, Color? imageColor, fit = BoxFit.cover}) {
  return CachedNetworkImage(
    key: Key("key${Random.secure().nextInt(999999)}"),
    height: height,
    width: width,
    imageUrl: url,
    color: imageColor == null ? null : imageColor,
    fit: fit,
    filterQuality: FilterQuality.low,
    placeholder: (context, url) => Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(40),
      child: Image.asset(
        AssetsRoutes.loadingGIF,
      ),
    ),
    errorWidget: (context, url, error) => Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: const Icon(Icons.not_interested_outlined),
    ),
  );
}
