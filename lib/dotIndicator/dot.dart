import 'package:DotPageIndicator/dotIndicator/dotIndicatorModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Dot extends StatelessWidget {
  final int dotIndex;

  Dot({
    this.dotIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<IndicatorModel>(
      builder: (ctx, w, dotm) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => dotm.pageController.jumpToPage(this.dotIndex),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1),
                color: dotm.pages[this.dotIndex] ? Colors.white : Colors.black,
              ),
              duration: Duration(milliseconds: 300),
              width: dotm.pages[this.dotIndex] ? 30 : 20,
              height: dotm.pages[this.dotIndex] ? 30 : 20,
            ),
          ),
        );
      },
    );
  }
}
