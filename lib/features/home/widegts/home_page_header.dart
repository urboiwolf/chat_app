import 'package:chat_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'POMODORO',
          style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontFamily: 'Poppins'),
        ),
        const Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: lightGrey.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/Vector.svg'),
          ),
        )
      ],
    );
  }
}
