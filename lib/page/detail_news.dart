import 'package:flutter/material.dart';
import 'package:solusidigital/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/model/news.dart';
import 'package:intl/intl.dart';

class DetailNews extends StatelessWidget {
  final News news;
  const DetailNews({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Text(
          'Berita',
          style: primaryTS.copyWith(color: Colors.white, fontWeight: bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 152.h,
            width: double.infinity,
            margin: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(news.urlToImage.toString())),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                defaultMargin * 2, 14.h, defaultMargin * 2, 10.h),
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
            margin: EdgeInsets.fromLTRB(
                defaultMargin * 2, 0, defaultMargin * 2, 3.h),
            child: Text(
              'Sumber : ${news.source!.name}',
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTS.copyWith(
                  fontSize: 14.sp, color: const Color(0xffAAAAAA)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                defaultMargin * 2, 0, defaultMargin * 2, 10.h),
            child: Text(
              DateFormat.yMMMMd('id')
                      .add_jm()
                      .format(news.publishedAt as DateTime) +
                  ' WIB',
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTS.copyWith(
                  fontSize: 14.sp, color: const Color(0xffAAAAAA)),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(defaultMargin * 2, 0, defaultMargin * 2, 0),
            child: Text(
              '${news.content}',
              textAlign: TextAlign.justify,
              style: primaryTS.copyWith(
                  fontSize: 15.sp, color: const Color(0xff5A5A5A)),
            ),
          ),
        ],
      ),
    );
  }
}
