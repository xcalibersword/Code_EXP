import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
import 'package:flutter_ecommerce_app/src/pages/job_info.dart';
import 'package:flutter_ecommerce_app/src/pages/video.dart';
import 'package:flutter_ecommerce_app/src/pages/applied.dart';

class Routes{
  static Map<String,WidgetBuilder> getRoute(){
    return  <String, WidgetBuilder>{
          '/': (_) => MainPage(),
          '/detail': (_) => ProductDetailPage(),
          '/video' : (_) => VideoPage(),
          '/applied' : (_) => AppliedPage(),
        };
  }
}