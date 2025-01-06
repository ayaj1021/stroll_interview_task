import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_interview_task/utils/spacing.dart';
import 'package:stroll_interview_task/utils/text_theme_extension.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: context.textTheme.s34w700.copyWith(
                color: const Color(0xFFCBC9FF),
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFCBC9FF),
            )
          ],
        ),
        const VerticalSpacing(2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/timer.svg'),
            const HorizontalSpacing(3),
            Text(
              '22h 00m',
              style: context.textTheme.s12w600.copyWith(
                color: Colors.white,
              ),
            ),
            const HorizontalSpacing(10),
            SvgPicture.asset('assets/icons/person.svg'),
            const HorizontalSpacing(3),
            Text(
              '103',
              style: context.textTheme.s12w600.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
