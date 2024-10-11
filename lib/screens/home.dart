import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/utils/widgets/box_card/promo_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/widgets/inputfields.dart';

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
            backgroundColor:
                Colors.transparent,
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
                    const SizedBox(
                        width: 8),
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
                      icon:
                        const Icon(Icons.notifications_none_outlined,
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
          PromoSection(),
          SizedBox(height: 24,),
          CategoryMenu(),
          SizedBox(height: 24,),
          FlashSaleSection(),
          SizedBox(height: 24,),
          MegaSaleSection(),
          SizedBox(height: 24,),
          RecommendSection()
        ],
      ),
    );
  }
}

class PromoSection extends StatefulWidget {
  const PromoSection({super.key});

  @override
  _PromoSectionState createState() => _PromoSectionState();
}

class _PromoSectionState extends State<PromoSection> {
  final PageController _pageController = PageController(viewportFraction: 1);
  int _currentPage = 0;

  final List<Widget> promoCards = const [
    PromoCard(
      label: 'Super Flash Sale\n50% Off',
      images: AssetImage('assets/images/Promotion_Image.png'),
    ),
    PromoCard(
      label: 'Weekend Special\n30% Off',
      images: AssetImage('assets/images/Promotion_Image.png'),
    ),
    PromoCard(
      label: 'New Arrivals\n20% Off',
      images: AssetImage('assets/images/Promotion_Image.png'),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          // Carousel
          SizedBox(
            height: 190,
            child: PageView.builder(
              controller: _pageController,
              itemCount: promoCards.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: promoCards[index],
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(promoCards.length, (index) {
              return AnimatedContainer(
                duration: const Duration(seconds: 3),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
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
    return Container();
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
