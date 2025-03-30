import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_game_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import '../../utils/project_app_utils.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nPortfolio",
        ),
        const CustomSectionSubHeading(
          text: "Here are few samples of my previous work :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: ProjectGameUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectIcon: ProjectGameUtils.icons[i],
              projectLink: ProjectGameUtils.links[i],
              projectTitle: ProjectGameUtils.titles[i],
              projectDescription: ProjectGameUtils.description[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y!,
        // SizedBox(
        //   height: AppDimensions.normalize(14),
        //   width: AppDimensions.normalize(50),
        //   child: OutlinedButton(
        //     onPressed: () => openURL(StaticUtils.gitHub),
        //     child: Text(
        //       'See More',
        //       style: AppText.l1b,
        //     ),
        //   ),
        // )
        /// ✅ กลุ่มที่ 2: Application Portfolio
        const CustomSectionHeading(
          text: "\nApplication Portfolio",
        ),
        const CustomSectionSubHeading(
          text: "Innovation application for sale presentation 👨‍💻 🤖\n\n",
        ),
        CarouselSlider.builder(
          itemCount: ProjectAppUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectIcon: ProjectAppUtils.icons[i],
              projectLink: ProjectAppUtils.links[i],
              projectTitle: ProjectAppUtils.titles[i],
              projectDescription: ProjectAppUtils.description[i],
              banner: ProjectAppUtils.banners[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
