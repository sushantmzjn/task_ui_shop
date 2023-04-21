import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shop/model/caurosel.dart';
import 'package:shop/view/product_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../model/bags.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _DashBoardState();
}

class _DashBoardState extends State<HomePage> {
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  int _current = 0;
  late Timer cauroselTimer;

  Timer getTimer() {
    return Timer.periodic(Duration(seconds: 3), (timer) {
      if (_current == 4) {
        _current = 0;
      }
      if (controller.hasClients) {
        controller.animateToPage(_current,
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }
      _current++;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    cauroselTimer = getTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(CupertinoIcons.person_fill),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sushant Maharjan',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w700)),
                      Text(DateFormat('d LLL, yyyy')
                          .format(DateTime.parse(DateTime.now().toString())))
                    ],
                  ),
                  Spacer(),
                  Badge(
                      label: Text('3'),
                      largeSize: 14,
                      child: Icon(Icons.notifications))
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 160,
                  child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      itemCount: background.length,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.only(top: 0.0, bottom: 0, right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            // color: Colors.cyan
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(
                              background[index].imageUrl,
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SmoothPageIndicator(
                    effect: WormEffect(
                        dotHeight: 3.h,
                        dotWidth: 18.w,
                        activeDotColor: Colors.blue,
                        dotColor: Colors.grey),
                    controller: controller,
                    count: 4)
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: MasonryGridView.builder(
                key: const PageStorageKey<String>('page'),
                shrinkWrap: true,
                itemCount: bags.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  final bag = bags[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 6),
                    child: Container(
                      decoration: BoxDecoration(
                          color: bag.color,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(3, 3))
                          ]),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => DetailPage(bags: bag),
                                      transition:
                                          Transition.leftToRightWithFade);
                                },
                                child: Hero(
                                    tag: 'image-${bag.id}',
                                    child: Image.asset(bag.imageUrl)),
                              )),
                          Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        bag.title,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(bag.rating),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        bag.price,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        child: Icon(Icons.add_shopping_cart,
                                            size: 20),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
