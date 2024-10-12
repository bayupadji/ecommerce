import 'package:ecommerce/models/Promo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/providers/timer_provider.dart';

class PromoCard extends StatelessWidget {
  final PromoItemModel item;

  const PromoCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TimerProvider>(
      builder: (context, timerProvider, child) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
              image: AssetImage(item.images),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.label,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppColors.backgroundColor,
                ),
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Hours
                  _buildTimeBox(timerProvider.hours),
                  SizedBox(width: 8),
                  // Colon separator
                  _buildColon(),
                  SizedBox(width: 8),
                  // Minutes
                  _buildTimeBox(timerProvider.minutes),
                  SizedBox(width: 8),
                  // Colon separator
                  _buildColon(),
                  SizedBox(width: 8),
                  // Seconds
                  _buildTimeBox(timerProvider.seconds),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTimeBox(String time) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: EdgeInsets.all(8),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.darkColor,
        ),
      ),
    );
  }

  Widget _buildColon() {
    return Text(
      ':',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.backgroundColor,
      ),
    );
  }
}
