import 'package:ecommerce/models/product_item_model.dart';

class ProductItemsRepository {
  List<ProductItemModel> getProductItems() {
    return [
      ProductItemModel(
        images: 'assets/images/Product1.png',
        label: 'FS - Nike Air Max 270',
        price: 'Rp1.290.000',
        pricedash: '2.000.000',
        discount: '10% Off'
      ),
      ProductItemModel(
        images: 'assets/images/Product2.png',
        label: 'FS - QUILTED MAXI BLACK',
        price: 'Rp1.290.000',
        pricedash: '2.000.000',
        discount: '10% Off'
      ),
      ProductItemModel(
        images: 'assets/images/Product3.png',
        label: 'FS - Nike Air Max 270',
        price: 'Rp1.290.000',
        pricedash: '2.000.000',
        discount: '10% Off'
      ),
    ];
  }
}
