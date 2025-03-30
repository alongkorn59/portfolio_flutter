import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_game_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

import '../../utils/project_app_utils.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGame Portfolio",
          ),
          const CustomSectionSubHeading(
            text: "Here are few samples of my previous work 🎮 🕹️\n\n",
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: ProjectGameUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    banner: e.value,
                    projectIcon: ProjectGameUtils.icons[e.key],
                    projectLink: ProjectGameUtils.links[e.key],
                    projectTitle: ProjectGameUtils.titles[e.key],
                    projectDescription: ProjectGameUtils.description[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y2!,

          // ✅ กลุ่มที่ 2
          Container(
            padding: Space.h!,
            child: Column(
              children: [
                const CustomSectionHeading(
                  text: "\nApplication Portfolio",
                ),
                const CustomSectionSubHeading(
                  text: "Innovation application for sale presentation 👨‍💻 🤖\n\n",
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: AppDimensions.normalize(10),
                  children: ProjectAppUtils.banners
                      .asMap()
                      .entries
                      .map(
                        (e) => ProjectCard(
                          banner: e.value,
                          projectIcon: ProjectAppUtils.icons[e.key],
                          projectLink: ProjectAppUtils.links[e.key],
                          projectTitle: ProjectAppUtils.titles[e.key],
                          projectDescription:
                              ProjectAppUtils.description[e.key],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
