import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_interview_task/utils/spacing.dart';
import 'package:stroll_interview_task/utils/text_theme_extension.dart';

class ImageQuoteSection extends StatelessWidget {
  const ImageQuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/user_image.png'),
              ),
              const HorizontalSpacing(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Angelina, 28',
                    style: context.textTheme.s12w700.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const VerticalSpacing(10),
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      'What is your favorite time of the day?',
                      style: context.textTheme.s20w700.copyWith(
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              )
            ],
          ),
          const VerticalSpacing(9),
          Text(
            "“Mine is definitely the peace in the morning.”",
            style: context.textTheme.s12w400.copyWith(
              color: const Color(0xFFCBC9FF),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
