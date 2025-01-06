import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_interview_task/utils/spacing.dart';
import 'package:stroll_interview_task/utils/text_theme_extension.dart';

class SelectQuoteSection extends StatefulWidget {
  const SelectQuoteSection({super.key});

  @override
  State<SelectQuoteSection> createState() => _SelectQuoteSectionState();
}

class _SelectQuoteSectionState extends State<SelectQuoteSection> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 150.h,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: quotes.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2.5),
              itemBuilder: (_, index) {
                final data = quotes[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 50.h,
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xff232A2E),
                      border: Border.all(
                          width: 2,
                          color: _selectedIndex == index
                              ? const Color(0xFF8B88EF)
                              : Colors.transparent),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? const Color(0xFF8B88EF)
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _selectedIndex == index
                                  ? Colors.transparent
                                  : const Color(0xFFC4C4C4),
                            ),
                          ),
                          child: Text(
                            data['option'],
                            style: context.textTheme.s12w400.copyWith(
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : const Color(0xFFC4C4C4),
                            ),
                          ),
                        ),
                        const HorizontalSpacing(10),
                        SizedBox(
                          width: 118.w,
                          child: Text(
                            data['quote'],
                            style: context.textTheme.s14w400.copyWith(
                              color: const Color(0xFFC4C4C4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        const VerticalSpacing(11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pick your option.\nSee who has a similar mind.',
              style: context.textTheme.s12w400.copyWith(
                color: const Color(0xFFE5E5E5),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.2,
                      color: const Color(0xFF8B88EF),
                    ),
                  ),
                  child: SvgPicture.asset('assets/icons/mic.svg'),
                ),
                const HorizontalSpacing(6),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF8B88EF),
                  ),
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

List<Map<String, dynamic>> quotes = [
  {'option': 'A', 'quote': 'The peace in the early mornings'},
  {'option': 'B', 'quote': 'The magical golden hours'},
  {'option': 'C', 'quote': 'Wind-down time after dinners'},
  {'option': 'D', 'quote': 'The serenity past midnight'},
];
