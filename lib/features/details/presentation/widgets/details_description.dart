import 'package:anime_app/core/constants/svgs.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Svgs.fire),
          4.horizontalSpace,
          Expanded(
            child: Text(
              'Demon Slayer: Kimetsu no Yaiba follows\n'
              'Tanjiro, a kind-hearted boy who becomes\n'
              'a demon slayer after his family is slaughtered\n'
              'and his sister is turned into a demon. Experience\n'
              'breathtaking battles, stunning animation,\n'
              'and an emotional journey of courage\n'
              'and hope.',
              style: AppTextStyles.font14WhiteRegular,
            ),
          ),
        ],
      ),
    );
  }
}
