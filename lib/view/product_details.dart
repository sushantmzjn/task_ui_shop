import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/bags.dart';
class DetailPage extends StatelessWidget {
  final Bag bags;
  DetailPage({required this.bags});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bags.color,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0))
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Icon(CupertinoIcons.left_chevron, color: Colors.white,),
                    onTap: (){Navigator.pop(context);},
                  ),
                  SizedBox(height: 12.h,),
                  Text(bags.title,style: TextStyle(fontSize: 24.sp, color: Colors.white, fontWeight: FontWeight.w700),),
                  Text(bags.rating,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10.sp),),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price', style: TextStyle(fontSize: 14.sp,color: Colors.white),),
                          Text(bags.price, style: TextStyle(fontSize: 20.sp, color: Colors.white),),
                        ],
                      ),
                      SizedBox(width: 12.0,),
                      Expanded(
                        child: Hero(
                            tag: 'image-${bags.id}',
                            child: Image.asset(bags.imageUrl,fit: BoxFit.fill,)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('Details',style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),),
                  ),
                  Text(bags.detail,  style: TextStyle(fontSize: 14.sp, wordSpacing: 2, letterSpacing: 1),),

                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,constraints: BoxConstraints(),
                              onPressed: (){}, icon: Icon(CupertinoIcons.minus_circle_fill)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('01',style: TextStyle(fontSize: 14.sp),),
                          ),
                          IconButton(
                              padding: EdgeInsets.zero,constraints: BoxConstraints(),
                              onPressed: (){}, icon: Icon(CupertinoIcons.add_circled_solid)),

                        ],
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,constraints: BoxConstraints(),
                          onPressed: (){}, icon: Icon(CupertinoIcons.heart_circle, color: Colors.red,))
                    ],
                  ),
                  SizedBox(height :22.h),
                  Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Icon(Icons.add_shopping_cart),
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 35.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.blue
                            ),
                            child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
