import 'package:audio_player/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(top: 35, bottom: 15, left: 35, right: 35),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Gap(5.h),
          CircleAvatar(
            backgroundColor: AppColors.secondaryColor,
            radius: 145.r,
          ),
          Gap(30.h),
          Text('Uday Player',
              style: TextStyle(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Gap(15.h),
          Text('Music Player', style: AppStyles.titleText),
          Gap(40.h),
          Container(width: double.infinity, height: 5, color: Colors.red),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('00:02', style: AppStyles.bodyText),
              Text('01:00', style: AppStyles.bodyText),
            ],
          ),
          Gap(35.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.repeat, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.skip_previous, color: Colors.white),
                onPressed: () {},
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: const Icon(Icons.skip_next, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.volume_up, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          Gap(40.h),
          Container(
            height: 80.h,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: AppColors.primaryColorLight,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.downloading_rounded,
                      color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon:
                      const Icon(Icons.line_style_rounded, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
