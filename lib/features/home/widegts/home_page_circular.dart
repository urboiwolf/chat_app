import 'package:chat_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeBodyCircularWidget extends StatelessWidget {
  const HomeBodyCircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.grey.shade500,
              ),
            ],
            // gradient: RadialGradient(
            //   colors: [
            //     mainColor,
            //     Colors.purple,
            //   ],
            // ),
            borderRadius: BorderRadius.circular(180),
            color: mainColor,
          ),
          child: Center(
            child: CircularProgressIndicator(
              value: 0.2,
              strokeWidth: 8,
              strokeAlign: 24,
              strokeCap: StrokeCap.butt,
              color: mainColor,
              backgroundColor: whiteColor,
            ),
          ),
        ),
        Positioned(
          left: 85,
          top: 108,
          child: Text(
            '12:00',
            style: TextStyle(
                color: whiteColor, fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
