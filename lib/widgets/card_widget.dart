import 'package:flutter/material.dart';
import 'package:effectivesber/models/card_model.dart';
import '../res/color_select.dart';
import '../res/text_styles.dart';

// ignore: must_be_immutable
class SberCard extends StatelessWidget {
  CardModel model;

  SberCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: ColorSelect.shadowColor,
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: ColorSelect.shadowDarkColor,
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16),
                Image(image: model.icon, width: 36, height: 36),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(model.header, style: TextStyles.cardHeaderStyle),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          SizedBox(
              height: 38,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: 184,
                          child: Text(model.date, style: TextStyles.infoBlackStyle),
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          width: 184,
                          child: Text(model.costs, style: TextStyles.infoStyle),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
