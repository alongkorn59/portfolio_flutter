import 'package:flutter/material.dart';

import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    shadowSub: const Color(0xffC0392B).withAlpha(100),
    primary: const Color(0xffC0392B),
    primaryLight: const Color(0xffC0392B).withAlpha(100),
    textSub: const Color(0xff141414),
    textSub2: const Color(0xff696969),
  );

  static AppCoreTheme light = _core.copyWith(
    background: Colors.white,
    backgroundSub: const Color(0xffF0F0F0),
    scaffold: const Color(0xfffefefe),
    text: const Color(0xff484848),
    textSub2: Colors.black.withOpacity(0.25),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: Colors.grey[900],
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white.withOpacity(0.25),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}

// class AppTheme {
//   static final _core = AppCoreTheme(
//     // Update pastel color values here
//     shadowSub: const Color(0xFFADD8E6).withAlpha(100),
//     primary: const Color(0xFFADD8E6),
//     primaryLight: const Color(0xFFADD8E6).withAlpha(100),
//     textSub: const Color(0xFF7C7C7C),
//     textSub2: const Color(0xFFB0B0B0),
//   );

//   static AppCoreTheme light = _core.copyWith(
//     background: Colors.white,
//     backgroundSub: const Color(0xFFF0F0F0),
//     scaffold: const Color(0xFFFDFDFD),
//     text: const Color(0xFF686868),
//     textSub2: Colors.black.withOpacity(0.25),
//   );

//   static AppCoreTheme dark = _core.copyWith(
//     background: Colors.grey[900],
//     backgroundSub: const Color(0xFF1C1C1E),
//     scaffold: const Color(0xFF0E0E0E),
//     text: Colors.white,
//     textSub2: Colors.white.withOpacity(0.25),
//   );

//   static AppCoreTheme? c;

//   // Init
//   static init(BuildContext context) {
//     c = isDark(context) ? dark : light;
//   }

//   static bool isDark(BuildContext context) =>
//       Theme.of(context).brightness == Brightness.dark;
// }
