import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

ImageProvider getImageProvider(String url) {
  if (url.startsWith('http')) {
    return CachedNetworkImageProvider(url);
  } else if (url.startsWith('assets')) {
    return AssetImage(url);
  } else if (url.startsWith('imageBytes')) {
    return MemoryImage(base64Decode(url.split('::')[1]));
  } else {
    return FileImage(
      File(url),
    );
  }
}
