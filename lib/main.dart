import 'package:DotPageIndicator/dotIndicator/dot.dart';
import 'package:DotPageIndicator/dotIndicator/dotIndicatorModel.dart';
import 'package:DotPageIndicator/dotIndicator/dotsRow.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(PagesWithDotIndicatorBS());
}

class PagesWithDotIndicatorBS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PagesWithDotIndicator(),
      ),
    );
  }
}

class PagesWithDotIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DotPageIndicator.initPages(4, 0); // number of pages and initial page

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: DotPageIndicator.pageController,
            children: [
              Container(
                color: Colors.deepPurple,
              ),
              Container(
                color: Colors.blueGrey,
              ),
              Container(
                color: Colors.deepOrange,
              ),
            ],
            onPageChanged: DotPageIndicator.onPageChanged,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DotPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
// I wanted to test this idea faster and now I hate how
// this code is organised.....