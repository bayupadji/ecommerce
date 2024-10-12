import 'package:ecommerce/models/menu_item_model.dart';

class MenuItemRepository {
  List<MenuItemModel> getMenuItems() {
    return [
      MenuItemModel(
        label: 'Man Shirt',
        images: 'assets/icons/Product_icon/shirt.svg',
      ),
      MenuItemModel(
        label: 'Dress',
        images: 'assets/icons/Product_icon/dress.svg',
      ),
      MenuItemModel(
        label: 'Woman Shoes',
        images: 'assets/icons/Product_icon/woman_shoes.svg',
      ),
      MenuItemModel(
        label: 'Woman Bag',
        images: 'assets/icons/Product_icon/woman_bag.svg',
      ),
      MenuItemModel(
        label: 'Man Shoes',
        images: 'assets/icons/Product_icon/man_shoes.svg',
      ),
      MenuItemModel(
        label: 'Man Bag',
        images: 'assets/icons/Product_icon/man_bag.svg',
      ),
    ];
  }
}
