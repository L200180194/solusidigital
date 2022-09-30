import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/theme.dart';

class CardAntrian extends StatelessWidget {
  const CardAntrian({
    Key? key,
    required this.screenData,
  }) : super(key: key);

  final MediaQueryData screenData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 0),
      height: screenData.size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blueColor, redColor])),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.3,
                padding: EdgeInsets.fromLTRB(23.h, 10.h, 23.h, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'INFO ANTRIAN',
                  style: primaryTS.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.1,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.6,
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.4,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: SizedBox(
                                  width: screenData.size.width * 0.25,
                                  child: Image.asset(
                                    'assets/images/circle.png',
                                    width: constraints.maxHeight * 0.5,
                                    height: constraints.maxHeight * 0.5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: FittedBox(
                                  child: Text('21',
                                      style: primaryTS.copyWith(
                                          color: Colors.white,
                                          fontWeight: bold,
                                          fontSize: 17.sp)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: screenData.size.width * 0.25,
                          height: constraints.maxHeight * 0.1,
                          child: FittedBox(
                            child: Text('Nomor Antrian',
                                style: primaryTS.copyWith(
                                    color: Colors.white,
                                    fontWeight: bold,
                                    fontSize: 10.sp)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.4,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: screenData.size.width * 0.25,
                                child: Image.asset(
                                  'assets/images/circle.png',
                                  width: constraints.maxHeight * 0.5,
                                  height: constraints.maxHeight * 0.5,
                                ),
                              ),
                              SizedBox(
                                child: FittedBox(
                                  child: Text('5',
                                      style: primaryTS.copyWith(
                                          color: Colors.white,
                                          fontWeight: bold,
                                          fontSize: 17.sp)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: screenData.size.width * 0.25,
                          height: constraints.maxHeight * 0.1,
                          child: FittedBox(
                            child: Text('Sisa Antrian',
                                style: primaryTS.copyWith(
                                    color: Colors.white,
                                    fontWeight: bold,
                                    fontSize: 10.sp)),
                          ),
                        ),
                      ],
                    ),
                    const Flexible(flex: 1, child: SizedBox()),
                    Flexible(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.only(left: 19.w),
                        // color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: FittedBox(
                                child: Container(
                                  child: Text(
                                    'Dokter anda',
                                    style: primaryTS.copyWith(
                                        color: const Color(0xffFFF9AA),
                                        fontWeight: bold,
                                        fontSize: 9.sp),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: FittedBox(
                                child: Text(
                                  'dr. Rina Agustina',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTS.copyWith(
                                      color: Colors.white,
                                      fontWeight: bold,
                                      fontSize: 9.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: FittedBox(
                                child: Text(
                                  'Klinik / RS anda',
                                  style: primaryTS.copyWith(
                                      color: const Color(0xffFFF9AA),
                                      fontWeight: bold,
                                      fontSize: 9.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: FittedBox(
                                child: Text(
                                  'RS. National Hospital',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryTS.copyWith(
                                      color: Colors.white,
                                      fontWeight: bold,
                                      fontSize: 9.sp),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
