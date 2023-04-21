import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop/view/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
bool obscureText = true;
TextEditingController passwordController = TextEditingController();
TextEditingController usernameController = TextEditingController();
final _from = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:30.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/shop.png', height: 100.h, color: Colors.blue,),
                SizedBox(height: 25.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Form(
                    key: _from,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: usernameController,
                          validator: (value){
                            if(value!.trim().isEmpty){
                              return 'required';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            contentPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.blueAccent)
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.red)
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h,),
                        TextFormField(
                          validator: (value){
                            if(value!.trim().isEmpty){
                              return 'required';
                            }
                            return null;
                          },
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: obscureText,
                          onChanged: (value){
                            setState(() {});
                          },
                          decoration: InputDecoration(
                            suffixIcon: passwordController.text.isEmpty ? null : IconButton(icon: obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                              onPressed: () {
                              setState(() {
                              obscureText = !obscureText;
                              });
                            },),
                            labelText: 'Password',
                            contentPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.blueAccent)
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.red)
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        ElevatedButton(
                            onPressed: (){
                              _from.currentState!.save();
                              FocusScope.of(context).unfocus();
                              if(_from.currentState!.validate()){
                                Get.to(()=> DashBoard());
                              }
                            },
                            child: Text('Login',style: TextStyle(fontSize: 16.sp),),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 35.h),
                            elevation: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('forgot password ?',textAlign: TextAlign.right, style: TextStyle(color: Colors.blue, fontSize: 14.sp),),
                        ),
                        SizedBox(height: 20.h,),
                        Row(
                          children: const [
                            Expanded(child: Divider(color: Colors.blue, thickness: 1,)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('Or Continue with'),
                            ),
                            Expanded(child: Divider(color: Colors.blueAccent, thickness: 1,))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(4,3)
                                      )
                                    ]
                                ),
                                child: Image.asset('assets/images/google.png', height: 55,),
                              ),
                              SizedBox(width: 20.w,),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(4,3)
                                      )
                                    ]
                                ),
                                child: Image.asset('assets/images/facebook.png', height: 55,),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
