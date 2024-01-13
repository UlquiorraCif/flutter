import 'package:flutter/material.dart';
import 'package:effectivesber/res/color_select.dart';
import 'package:effectivesber/res/image_select.dart';
import 'package:effectivesber/res/text_select.dart';
import 'package:effectivesber/res/text_styles.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      elevation: 2,
      pinned: false,
      floating: true,
      stretch: true,
      expandedHeight: 306,
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          color: ColorSelect.mainGreen,
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: ColorSelect.mainGreen,
        onPressed: () {},
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 30),
                child: const Image(image: ImageSelect.user),
              ),
              const Text(
                TextSelect.username,
                style: TextStyles.userNameStyle,
              ),
            ],
          ),
        ),
      ),
      bottom: const TabBar(
        indicatorColor: ColorSelect.mainGreen,
        tabs: [
          Tab(
              child: Text(
            TextSelect.titleProfile,
            style: TextStyles.tabsStyle,
          )),
          Tab(
              child: Text(
            TextSelect.titleSettings,
            style: TextStyles.tabsStyle,
          )),
        ],
      ),
    );
  }
}
