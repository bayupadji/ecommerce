import 'package:ecommerce/models/navbar_item_model.dart';

class NavbarRepository {
  static List<NavItem> get navItems => [
    NavItem(iconPath: 'assets/icons/system_icon/Home.png', label: 'Home'),
    NavItem(iconPath: 'assets/icons/system_icon/Search.png', label: 'Explore'),
    NavItem(iconPath: 'assets/icons/system_icon/Cart.png', label: 'Cart'),
    NavItem(iconPath: 'assets/icons/system_icon/Offer.png', label: 'Offer'),
    NavItem(iconPath: 'assets/icons/system_icon/User.png', label: 'Account'),
  ];
}
