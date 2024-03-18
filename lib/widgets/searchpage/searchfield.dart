import 'package:carcheck/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 400,
            height: 70,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/svg/carplate.svg',
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 85,
                    ),
                    SizedBox(
                      width: 70,
                      child: TextField(
                        style: size20weight700.copyWith(color: Colors.black),
                        
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        maxLength: 2,
                        decoration: InputDecoration(
                          counterText: "",
                          hintText: 'AA',
                          hintStyle: size20weight700.copyWith(color: grayColor),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 65,
                      child: TextField(
                        maxLength: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 100,
                      child: TextField(
                        maxLength: 3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
