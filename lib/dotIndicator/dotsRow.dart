import 'package:DotPageIndicator/dotIndicator/dot.dart';
import 'package:DotPageIndicator/dotIndicator/dotIndicatorModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart'; 

// this page indicator can only be used once because of the model ups
class DotPageIndicator extends StatelessWidget {
  // things you need
  static PageController pageController = dotModel.pageController;
  static Function(int) onPageChanged = dotModel.onPageChanged;
  static Function(int, int) initPages = dotModel.initPages;

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: dotModel,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          dotModel.pages.length,
          (index) {
            return Dot(
              dotIndex: index,
            );
          },
        ),
      ),
    );
  }
}
