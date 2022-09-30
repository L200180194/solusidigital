import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 10.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE3E3E3)),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: const Color(0xffF4F4F4)),
      child: Center(
        child: TextFormField(
          decoration: const InputDecoration(
              hintStyle: TextStyle(color: Color(0xff707070)),
              hintText: 'Cari Klinik / Rumah Sakit',
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
