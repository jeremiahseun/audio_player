import 'package:audio_player/src/features/music_screen/music_screen.dart';
import 'package:audio_player/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).push(
              CupertinoPageRoute(builder: (context) => const MusicScreen()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 30.h, left: 30.w, right: 30.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: AppColors.primaryColorLight,
          ),
          height: 100.h,
          width: double.infinity,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor,
                radius: 50.r,
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Play Music',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.bodyText,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: AppColors.secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.play_arrow, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 35, bottom: 15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Library', style: AppStyles.bigText),
                  Gap(15.h),
                  Container(
                    width: double.infinity,
                    height: 65.h,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColorLight,
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.white),
                        hintText: 'Song or artist...',
                        hintStyle: AppStyles.bodyText,
                      ),
                    ),
                  ),
                  Gap(30.h),
                  Text('Playlists', style: AppStyles.titleText),
                  Gap(10.h),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 250.h,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 35),
                separatorBuilder: (context, index) => const Gap(20),
                itemBuilder: (_, i) => SizedBox(
                  width: 180.w,
                  height: 70.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: 180.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColorLight,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: AppColors.primaryColor, width: 1),
                          ),
                        ),
                      ),
                      Gap(15.h),
                      Text('Playlist 1', style: AppStyles.subtitleText),
                      Gap(5.h),
                      Text('3 songs', style: AppStyles.smallText),
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
            Gap(30.h),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text('Favorite', style: AppStyles.titleText),
            ),
            Gap(10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(13),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColorLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.music_note_rounded,
                        color: AppColors.secondaryColor)),
                title: Text('Song 1', style: AppStyles.subtitleText),
                subtitle: Text('Artist 1', style: AppStyles.smallText),
                trailing:
                    const Icon(Icons.favorite, color: AppColors.fadeColor),
              ),
            )
          ]),
        ),
      )),
    );
  }
}
