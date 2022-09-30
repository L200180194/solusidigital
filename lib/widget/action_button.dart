import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/theme.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.screenData,
  }) : super(key: key);

  final MediaQueryData screenData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          defaultMargin, 23.h, defaultMargin, defaultMargin),
      height: screenData.size.height * 0.25,
      // color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff0093DD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/hospital.png',
                            height: 35.h,
                            width: 35.h,
                          )),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text(
                          'KLINIK TERDEKAT',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: primaryTS.copyWith(
                              color: const Color(0xff5A5A5A), fontSize: 10.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff0093DD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/list.png',
                            height: 30.h,
                            width: 30.h,
                          )),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text('RIWAYAT',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: primaryTS.copyWith(
                                color: const Color(0xff5A5A5A),
                                fontSize: 10.sp))
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff8445A2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/image-gallery.png',
                            height: 30.h,
                            width: 30.h,
                          )),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text('DATA SCAN',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: primaryTS.copyWith(
                                color: const Color(0xff5A5A5A),
                                fontSize: 10.sp))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.h,
                              decoration: const BoxDecoration(
                                  color: Color(0xff0093DD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                  child: Image.asset(
                                'assets/images/notification.png',
                                height: 30.h,
                                width: 30.h,
                              )),
                            ),
                            Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                  color: const Color(0xff50DEE3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text('NOTIFIKASI',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: primaryTS.copyWith(
                                color: const Color(0xff5A5A5A),
                                fontSize: 10.sp))
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff8445A2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/star.png',
                            height: 30.h,
                            width: 30.h,
                          )),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text('KLINIK TERDEKAT',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: primaryTS.copyWith(
                                color: const Color(0xff5A5A5A),
                                fontSize: 10.sp))
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff0093DD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/gear-option.png',
                            height: 30.h,
                            width: 30.h,
                          )),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text('PENGATURAN',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: primaryTS.copyWith(
                                color: const Color(0xff5A5A5A),
                                fontSize: 10.sp))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
