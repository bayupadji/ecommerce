import 'package:flutter/material.dart';

class PromoSectionProvider extends ChangeNotifier {
  final PageController pageController = PageController(viewportFraction: 1);
  int currentPage = 0;

  PromoSectionProvider() {
    pageController.addListener(_pageListener);
  }

  void _pageListener() {
    currentPage = pageController.page!.round();
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.removeListener(_pageListener);
    pageController.dispose();
    super.dispose();
  }
}
