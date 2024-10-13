import 'package:ecommerce/repositories/navbar_item_repository.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/providers/navbar_provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavbarProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: NavbarRepository.navItems.asMap().entries.map((entry) {
          int index = entry.key;
          var item = entry.value;
          return _buildNavItem(
            iconPath: item.iconPath,
            label: item.label,
            index: index,
            provider: provider,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String label,
    required int index,
    required NavbarProvider provider,
  }) {
    bool isSelected = provider.currentIndex == index;
    return GestureDetector(
      onTap: () => provider.setCurrentIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
            width: 28,
            height: 28,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
