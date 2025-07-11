import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/keys/end_ponits.dart';
import 'package:optikick/core/routes/routes.dart';
import 'package:optikick/core/services/cache_helper.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/bottom_nav/presentation/views/widgets/sidebar_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 4, 21, 10),
              Color.fromARGB(255, 40, 59, 52),
              Color(0xff5D6E68),
            ],
            stops: [0.0, 0.7, 1.0],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 30.h,
                    color: ColorsManager.textIconColor,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "${CacheHelper.getData(key: ApiKey.firstName)}${CacheHelper.getData(key: ApiKey.lastName)}",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: ColorsManager.realWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "${CacheHelper.getData(key: ApiKey.email)}",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.realWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SidebarTile(
              title: 'Profile',
              icon: Icons.person_2_outlined,
              onTap: () {
                Navigator.pushNamed(context, RoutesName.profile);
              },
            ),
            SidebarTile(
              title: 'Stats',
              icon: Symbols.vital_signs,
              onTap: () {
                CacheHelper.getData(key: ApiKey.isPlayer)
                    ? Navigator.pushNamed(context, RoutesName.playerStats)
                    : Navigator.pushNamed(context, RoutesName.stats);
              },
            ),
            SidebarTile(
              title: 'Training Program',
              icon: Icons.assignment_outlined,
              onTap: () {
                CacheHelper.getData(key: ApiKey.isPlayer)
                    ? Navigator.pushNamed(context, RoutesName.playerView)
                    : Navigator.pushNamed(context, RoutesName.trainingProgram);
              },
            ),
            CacheHelper.getData(key: ApiKey.role) != ApiKey.coachRole
                ? SidebarTile(
                    title: CacheHelper.getData(key: ApiKey.isPlayer)
                        ? 'Request an Assessment'
                        : 'Assessment Requests', //?view to players and doctor only
                    icon: Symbols.stethoscope,
                    iconColor: ColorsManager.textIconColor,
                    onTap: () {
                      if (CacheHelper.getData(key: ApiKey.role) ==
                          ApiKey.playerRole) {
                        Navigator.pushNamed(
                            context, RoutesName.submitNewAssesmentRequest);
                      } // as PLayerView;
                      else {
                        Navigator.pushNamed(
                            context, RoutesName.viewAllAssessmentRequests);
                      }
                    },
                  )
                : const SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                width: 90.w,
                child: const Divider(
                  color: ColorsManager.realGreyColor,
                  thickness: 0.5,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: ColorsManager.textIconColor,
              ),
              title: const Text(
                'Settings & Privacy',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline,
                  color: ColorsManager.textIconColor),
              title: const Text('Help Centre',
                  style: TextStyle(color: ColorsManager.realWhiteColor)),
              onTap: () {
                Navigator.pop(context);

                int random1 =
                    100 + (DateTime.now().millisecondsSinceEpoch % 900);
                int random2 =
                    100 + (DateTime.now().millisecondsSinceEpoch % 900);
                int random3 =
                    1000 + (DateTime.now().millisecondsSinceEpoch % 9000);
                final phoneNumber = '+1-$random1-$random2-$random3';

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: const Color(0xff20382F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      title: Row(
                        children: [
                          Icon(Icons.help_outline,
                              color: ColorsManager.realWhiteColor),
                          SizedBox(width: 10.w),
                          Text(
                            'Help Centre',
                            style: TextStyle(
                              color: ColorsManager.realWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Need assistance? We’re here to help! Reach out anytime using the contact info below.',
                            style: TextStyle(
                              color: ColorsManager.realWhiteColor
                                  .withOpacity(0.85),
                              fontSize: 14.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 20.w),
                            decoration: BoxDecoration(
                              color:
                              ColorsManager.realWhiteColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  phoneNumber,
                                  style: TextStyle(
                                    color: ColorsManager.realWhiteColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.copy,
                                      color: ColorsManager.realWhiteColor),
                                  onPressed: () {
                                    Clipboard.setData(
                                        ClipboardData(text: phoneNumber));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Phone number copied to clipboard!'),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: ColorsManager.realWhiteColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.w, vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              side: const BorderSide(
                                  color: ColorsManager.realWhiteColor),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Close',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined,
                  color: ColorsManager.textIconColor),
              title: const Text('Log Out',
                  style: TextStyle(color: ColorsManager.realWhiteColor)),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesName.login,
                      (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
