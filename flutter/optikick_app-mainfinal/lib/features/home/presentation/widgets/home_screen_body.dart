import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/features/home/presentation/widgets/overviewsection.dart';
import 'package:optikick/features/home/presentation/widgets/info_card.dart';

// Import detail pages
import 'package:optikick/features/home/presentation/pages/handwashing_detail_page.dart';
import 'package:optikick/features/home/presentation/pages/mental_health_detail_page.dart';
import 'package:optikick/features/home/presentation/pages/vitals_detail_page.dart';
import 'package:optikick/features/home/presentation/pages/sleep_detail_page.dart';

import '../../data/info_card_model.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  void _navigateToDetail(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = const HandwashingDetailPage();
        break;
      case 1:
        page = const MentalHealthDetailPage();
        break;
      case 2:
        page = const VitalsDetailPage();
        break;
      case 3:
        page = const SleepDetailPage();
        break;
      default:
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               OverviewSection(),

              // Grid of Info Cards
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(77),
                      blurRadius: 24,
                      spreadRadius: 4,
                      offset: Offset(0, 8.h),
                    ),
                  ],
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 24.w,
                  mainAxisSpacing: 18.h,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(infoCards.length, (index) {
                    final card = infoCards[index];
                    return InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () => _navigateToDetail(context, index),
                      child: Hero(
                        tag: 'infoCard_${card.title}',
                        child: InfoCard(
                          imagePath: card.imagePath,
                          title: card.title,
                          description: card.description,
                        ),
                      ),
                    );
                  }),
                ),
              ),

              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
