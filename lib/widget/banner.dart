import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/theme.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;

  final List<String> imgList = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenData = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: screenData.size.height * 0.18,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgList[index]), fit: BoxFit.cover),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(
                        defaultMargin, 13.h, defaultMargin, 10.h),
                  ),
                );
              },
              itemCount: imgList.length,
            ),
          ),
          SizedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imgList.length,
              (index) => Container(
                  margin: EdgeInsets.all(2.h),
                  child: _current != index
                      ? Icon(
                          Icons.circle_rounded,
                          size: 10,
                          color: _current == index
                              ? blueColor
                              : const Color(0xffD6D6D6),
                        )
                      : Image.asset('assets/images/rect.png')),
            ),
          ))
        ],
      ),
    );
  }
}
