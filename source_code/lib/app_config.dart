import 'package:flutter/material.dart';

var this_year = DateTime.now().year.toString();

  class AppConfig {
  static String copyright_text = "@ Duadeals " + this_year; //this shows in the splash screen
  static String app_name = "Duadeals - Shoes shopping app"; //this shows in the splash screen
  static String purchase_code = "1b4939ec-ca12-43ef-bddc-86d9d546179f"; //enter your purchase code for the app from codecanyon

  //Default language config
  static String default_language = "en";
  static String mobile_app_code = "en";
  static bool app_language_rtl = false;

  //configure this
  static const bool HTTPS = true;

  //configure this
  // static const DOMAIN_PATH = "192.168.88.244/ecommerce"; //localhost
  // static const DOMAIN_PATH = "demo.activeitzone.com/ecommerce_flutter_demo"; //inside a folder
  static const DOMAIN_PATH = "duadeals.in"; // directly inside the public folder

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
  static const String BASE_PATH = "${RAW_BASE_URL}/${PUBLIC_FOLDER}/";
  }