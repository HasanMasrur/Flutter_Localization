import 'package:Flutter_Localization/localization/demo_localization.dart';
import 'package:flutter/material.dart';

String getTranslated(BuildContext context, String key) {
  return DemoLocalizations.of(context).getTranslatedValue(key);
}

const String ENGLISH = 'en';
const String BANGLA = 'bn';
