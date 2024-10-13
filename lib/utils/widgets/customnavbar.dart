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
      padding: EdgeInsets.symmetric(vertical: 10),
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
        children: [
          _buildNavItem(
            iconPath: 'assets/icons/system_icon/Home.png',
            label: 'Home',
            index: 0,
            provider: provider,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/system_icon/Search.png',
            label: 'Explore',
            index: 1,
            provider: provider,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/system_icon/Cart.png',
            label: 'Cart',
            index: 2,
            provider: provider,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/system_icon/Offer.png',
            label: 'Offer',
            index: 3,
            provider: provider,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/system_icon/User.png',
            label: 'Account',
            index: 4,
            provider: provider,
          ),
        ],
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
