import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviceStackIcon extends StatelessWidget {
  final Color primary;
  const DeviceStackIcon({super.key, required this.primary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 48.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 8.w,
            top: 8.h,
            child: Container(
              width: 44.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: primary.withOpacity(0.12),
                border: Border.all(color: primary.withOpacity(0.3)),
              ),
            ),
          ),
          Container(
            width: 52.w,
            height: 32.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
              border: Border.all(color: primary),
            ),
            child: Icon(Icons.play_arrow_rounded, color: primary, size: 22.r),
          ),
        ],
      ),
    );
  }
}
