import 'package:ecommerce/models/Promo_item_model.dart';

class PromoItemRepository {
  List<PromoItemModel> getPromoItems() {
    return [
      PromoItemModel(
        label: 'Super Flash Sale\n50% Off',
        images: 'assets/images/Promotion_Image.png'
      ),
      PromoItemModel(
        label: 'Super Flash Sale\n50% Off',
        images: 'assets/images/Promotion_Image.png'
      ),
      PromoItemModel(
        label: 'Super Flash Sale\n50% Off',
        images: 'assets/images/Promotion_Image.png'
      ),
    ];
  }
}
