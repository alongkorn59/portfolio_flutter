import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  // static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/profile.jpg';
  // static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String famster = 'assets/photos/Famster.png';

  // work
  static const String varisoft = 'assets/work/varisoft.png';
  static const String pdl = 'assets/work/SBG-Studio-Logo.jpg';
  static const String dec = 'assets/work/DecMedia.jpg';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String gameDev = 'assets/services/game_dev.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    // "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    // "https://img.icons8.com/android/480/ffffff/twitter.png",
    // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/alongkorn.swanchan/",
    "https://www.linkedin.com/in/alongkorn-suwanjun/",
    "https://github.com/alongkorn59",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1zhWObL3N8AURY-4W2EvpuFPSNA8kwUMJ/view?usp=sharing';
  // 'https://drive.google.com/file/d/1OhoUHYVt4xbtZc2zAUuQBLeT8nO3_WiT/view?usp=sharing';
  // 'https://drive.google.com/file/d/1m3lZsHUvUccKcSzgKLYFgsBWTMjVe46Z/view?usp=sharing';

  static const String gitHub = 'https://github.com/alongkorn59';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
