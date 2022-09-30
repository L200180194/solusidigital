import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:solusidigital/providers/news_provider.dart';
import 'package:solusidigital/theme.dart';
import 'package:solusidigital/widget/mews_card.dart';
import 'package:solusidigital/widget/search_bar.dart';
import '../widget/banner.dart';

import '../widget/card_antrian.dart';
import '../widget/action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<NewsProvider>(context, listen: false).getNews();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    NewsProvider np = Provider.of<NewsProvider>(context);
    final screenData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const PreferredSize(
              child: SearchBar(), preferredSize: Size.fromHeight(48.0)),
          actions: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13.w),
                  child: Text(
                    'Hi, Bagus',
                    style: primaryTS.copyWith(fontWeight: bold),
                  ),
                ),
                Image.asset('assets/images/user (1).png')
              ],
            ),
            SizedBox(
              width: 13.w,
            ),
          ],
        ),
        backgroundColor: const Color(0xffF4F4F4),
        body: (isLoading == true)
            ? Container(
                child: SpinKitRing(
                  color: blueColor,
                  size: 50.0,
                ),
              )
            : RefreshIndicator(
                onRefresh: () {
                  setState(() {
                    isLoading = true;
                  });
                  return getInit();
                },
                child: ListView(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 15.h),
                      child: Column(
                        children: [
                          CardAntrian(screenData: screenData),
                          ActionButton(screenData: screenData),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    const BannerSlider(),
                    SizedBox(
                      height: 14.h,
                    ),
                    Column(
                      children: np.news
                          .map((e) => NewsCard(
                                news: e,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
