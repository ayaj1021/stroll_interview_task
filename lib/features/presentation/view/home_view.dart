import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_interview_task/features/presentation/components/header_section.dart';
import 'package:stroll_interview_task/features/presentation/components/image_quote_section.dart';
import 'package:stroll_interview_task/features/presentation/components/select_quote_section.dart';
import 'package:stroll_interview_task/utils/spacing.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset('assets/images/fade.png'),
          ),
          SizedBox(
            height: 470.h,
            width: width,
            child: Image.asset('assets/images/background.png'),
          ),
          const SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    VerticalSpacing(15),
                    HeaderSection(),
                    VerticalSpacing(311),
                    ImageQuoteSection(),
                    VerticalSpacing(14),
                    SelectQuoteSection(),
                    VerticalSpacing(14),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0F1115),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(
            icon: 'assets/icons/card.svg',
            label: '',
            badgeCount: 0,
          ),
          _buildNavItem(
            icon: 'assets/icons/bonfire.svg',
            label: '',
            badgeCount: 1,
            showDot: true,
          ),
          _buildNavItem(
            icon: 'assets/icons/chat.svg',
            label: '',
            badgeCount: 10,
          ),
          _buildNavItem(
            icon: 'assets/icons/profile.svg',
            label: '',
            badgeCount: 0,
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem _buildNavItem({
  required String icon,
  required String label,
  required int badgeCount,
  bool showDot = false,
}) {
  return BottomNavigationBarItem(
    icon: Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(icon),
        if (badgeCount > 0 || showDot)
          Positioned(
            right: -6,
            top: -6,
            child: Container(
              padding: EdgeInsets.all(showDot ? 3 : 4),
              decoration: BoxDecoration(
                color: const Color(0xFFB5B2FF),
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: const BoxConstraints(
                minWidth: 18,
                minHeight: 14,
              ),
              child: showDot
                  ? null
                  : Text(
                      '$badgeCount',
                      style: const TextStyle(
                        color: Color(0xff0F1115),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
      ],
    ),
    label: label,
  );
}
