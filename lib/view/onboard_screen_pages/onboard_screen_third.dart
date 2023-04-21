import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
class ThirdOnBoardScreen extends StatelessWidget {
  const ThirdOnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff336cdd),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Lottie.asset(
                    'assets/images/54350-online-shopping-delivery.zip',
                    width: 300.w,
                    height: 300.h
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', textAlign: TextAlign.center, style: TextStyle(fontSize: 14.sp, color: Colors.white),),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
