import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/view/login.dart';
import 'package:shop/view/onboard_screen_pages/onboard_screen_first.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboard_screen_pages/onboard_screen_second.dart';
import 'onboard_screen_pages/onboard_screen_third.dart';
import 'package:flutter/services.dart';

class OnBoardScreen extends StatefulWidget {

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController controller = PageController(initialPage: 0);

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        color: Colors.redAccent,
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (value){
                 setState(() {
                   onLastPage = value==2;
                 });
              },
              children: [
                FirstOnBoardScreen(),
                SecondOnBoardScreen(),
                ThirdOnBoardScreen()
              ],
            ),
            Container(
                alignment: Alignment(0,0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: onLastPage ? null : (){
                          controller.jumpToPage(2);
                        },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white
                      ), child: Text('Skip'),
                    ),
                    SmoothPageIndicator(
                        effect: WormEffect(
                          dotHeight: 3.h,
                          dotWidth: 20.w,
                          activeDotColor: Colors.green,
                          dotColor: Colors.grey
                        ),
                        controller: controller,
                        count: 3),
                    TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white
                        ),
                        onPressed: (){
                      if(onLastPage){
                        Get.to(()=> Login());
                      }else{
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutCubic);
                      }

                    }, child: Text( onLastPage ? 'Let\'s go' : 'Next'))
                  ],
                ))
          ],
        ),

      ),
    );
  }
}
