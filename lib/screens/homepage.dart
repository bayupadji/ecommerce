import 'package:ecommerce/repositories/promo_items_repository.dart';
import 'package:ecommerce/screens/index.dart';

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
            backgroundColor: Colors.transparent,
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
                        // Aksi untuk icon favorite
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
                ),
              ),
              Text(
                'More Category',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
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
    return Container();
  }
}

class MegaSaleSection extends StatelessWidget {
  const MegaSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
