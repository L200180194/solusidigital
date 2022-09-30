import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/model/news.dart';
import 'package:solusidigital/page/detail_news.dart';
import 'package:solusidigital/theme.dart';
import 'package:intl/intl.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Intl.defaultLocale = 'pt_BR';
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(defaultMargin, 11.h, defaultMargin, 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 152.h,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('${news.urlToImage}')),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(defaultMargin, 14.h, defaultMargin, 10.h),
            child: Text(
              '${news.title}',
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTS.copyWith(
                fontSize: 20.sp,
                fontWeight: bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 3.h),
            child: Text(
              'Sumber : ${news.author}',
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTS.copyWith(
                  fontSize: 14.sp, color: const Color(0xffAAAAAA)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 10.h),
            child: Text(
              DateFormat.yMMMMd('en_US')
                  .add_jm()
                  .format(news.publishedAt as DateTime),
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTS.copyWith(
                  fontSize: 14.sp, color: const Color(0xffAAAAAA)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 0),
            child: Text(
              '${news.content}',
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.clip,
              style: primaryTS.copyWith(
                  fontSize: 15.sp, color: const Color(0xff5A5A5A)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailNews(
                            news: news,
                          )));
            },
            child: Container(
                margin:
                    EdgeInsets.fromLTRB(defaultMargin, 5.h, defaultMargin, 0),
                child: Text(
                  'Baca Selengkapnya ...',
                  style: primaryTS.copyWith(fontSize: 15.sp, color: blueColor),
                )),
          )
        ],
      ),
    );
  }
}
