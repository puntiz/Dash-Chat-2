import 'dart:convert';

import 'package:flutter/material.dart';

ImageProvider getImageProvider(String url) {
  if (url.startsWith('http')) {
    return NetworkImage(url);
  } else if (url.startsWith('imageBytes')) {
    return MemoryImage(base64Decode(url.split('::')[1]));
  } else {
    return const AssetImage(
      'assets/placeholder.png',
      package: 'dash_chat_2',
    );
  }
}
