import 'package:ecommerce/models/product_item_model.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class MiniProductCard extends StatelessWidget {
  final ProductItemModel item;
  const MiniProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // action tap
      },
      child: Container(
        width: 160,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.lightColor),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 109,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(item.images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Text(
              item.label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.darkColor
              ),
            ),
            SizedBox(height: 8,),
            Text(
              item.price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.pricedash,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor,
                    decoration: TextDecoration.lineThrough
                  ),
                ),
                Text(
                  item.discount,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
