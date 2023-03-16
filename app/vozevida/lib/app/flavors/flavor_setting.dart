import 'package:flutter/material.dart';

import '../flavors/enum_flavor.dart';
import '../flavors/flavor_values.dart';

class FlavorSetting {
  late Flavor flavor;
  late ThemeData? appTheme;
  late FlavorValues values;

  FlavorSetting._internal();

  factory FlavorSetting({
    required Flavor flavor,
    ThemeData? theme,
    required FlavorValues values,
  }) {
    _instance.flavor = flavor;
    _instance.appTheme = theme;
    _instance.values = values;
    return _instance;
  }

  static final FlavorSetting _instance = FlavorSetting._internal();
  static FlavorSetting get instance => _instance;
}
