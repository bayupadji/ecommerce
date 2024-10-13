import 'package:ecommerce/repositories/product_items_repository.dart';
import 'package:ecommerce/repositories/promo_items_repository.dart';
import 'package:ecommerce/screens/index.dart';
import 'package:ecommerce/utils/widgets/box_card/mini_product_card.dart';
import 'package:ecommerce/utils/widgets/box_card/default_product_card.dart';
import 'package:ecommerce/utils/widgets/box_card/recomend_card.dart';
import 'package:ecommerce/utils/widgets/customnavbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Color(0x0F535353),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: AppColors.backgroundColor,
            toolbarHeight: 80,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 42, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: InputFields(
                        placeholder: 'Search',
                        maxLines: 1,
                        icon: Icons.search_outlined,
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_outline,
                        size: 32,
                        color: AppColors.greyColor,
                      ),
                      onPressed: () {
                        // Aksi untuk icon notifications
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        size: 32,
                        color: AppColors.greyColor,
                      ),
                      onPressed: () {
                        // Aksi untuk icon notifications
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [
          PromoSectionContent(),
          SizedBox(
            height: 24,
          ),
          CategoryMenu(),
          SizedBox(
            height: 24,
          ),
          FlashSaleSection(),
          SizedBox(
            height: 24,
          ),
          MegaSaleSection(),
          SizedBox(
            height: 24,
          ),
          RecommendSection()
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class PromoSectionContent extends StatelessWidget {
  const PromoSectionContent({super.key});

  @override
  Widget build(BuildContext context) {
    final promoSectionProvider = Provider.of<PromoSectionProvider>(context);
    final promoItems = PromoItemRepository().getPromoItems();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          // Carousel
          SizedBox(
            height: 190,
            child: PageView.builder(
              controller: promoSectionProvider.pageController,
              itemCount: promoItems.length,
              onPageChanged: (index) {
                promoSectionProvider.setCurrentPage(index);
              },
              itemBuilder: (context, index) {
                final promoItem = promoItems[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PromoCard(
                      item: promoItem), // Change 'promoItem' to 'item'
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          // Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(promoItems.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: promoSectionProvider.currentPage == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: promoSectionProvider.currentPage == index
                      ? AppColors.primaryColor
                      : AppColors.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = MenuItemRepository().getMenuItems();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // on Tap Actions
                },
                child: Text(
                  'More Category',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];
              return ItemsMenu(
                item: item,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 16,
              );
            },
          ),
        ),
      ],
    );
  }
}

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final productItems = ProductItemsRepository().getProductItems();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Flash Sale',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // on Tap Action
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
            height: 250,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final items = productItems[index];
                  return MiniProductCard(
                    item: items,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: productItems.length)),
      ],
    );
  }
}

class MegaSaleSection extends StatelessWidget {
  const MegaSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final productItems = ProductItemsRepository().getProductItems();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mega Sale',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // actions
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final items = productItems[index];
                return MiniProductCard(
                  item: items,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: productItems.length
          ),
        ),
      ],
    );
  }
}

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ProductItemsRepository().getProductItems();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const RecomendCard(),
          const SizedBox(height: 2),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: List.generate(items.length, (index) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width - 48) / 2,
                child: DefaultProductCard(item: items[index]),
              );
            }),
          ),
        ],
      ),
    );
  }
}
