import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class IndicatorModel extends Model {

  int _page = 0; // active page
  int get page => _page; // getter
  onPageChanged(index) { // when the pg detects a implicit scrolling
    _pages[_page] = false;
    _page = index;
    _pages[_page] = true;
    notifyListeners();
  }

  List<bool> _pages;
  List<bool> get pages => _pages;
  /// This will initialize the active values for each page
  initPages(numberOfPages, initialPage) { // when you choose how many pages do you
    // actually want
    _pages = List.generate(numberOfPages, (index) => index == initialPage);
    notifyListeners();
  }

  /// This controls the movement between the pages. Use it in your
  /// page view.
  PageController _pg = PageController(
    initialPage: 0,
  );
  PageController get pageController => _pg;
}

IndicatorModel dotModel = IndicatorModel();