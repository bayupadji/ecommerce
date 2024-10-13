import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';

class RecomendCard extends StatelessWidget {
  const RecomendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 206,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('assets/images/image1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recomended\nProduct',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.backgroundColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'We recommend the best for you',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.lightColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}