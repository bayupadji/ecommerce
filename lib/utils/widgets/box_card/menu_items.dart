import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce/models/menu_item_model.dart';

class ItemsMenu extends StatelessWidget {
  final MenuItemModel item;

  const ItemsMenu({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.lightColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: SvgPicture.asset(
              item.images,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 70,
          child: Text(
            item.label,
            textAlign: TextAlign.center,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
