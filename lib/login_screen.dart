import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:task_ivalley/bottomNavigationBar_screen.dart';
import 'package:task_ivalley/controllers/login_controller.dart';
import 'package:task_ivalley/utils/AssetsRoutes.dart';
import 'package:task_ivalley/widgets/TextFieldWidget.dart';
import 'package:task_ivalley/widgets/ToastM.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LoginController(),
      child: Consumer<LoginController>(
          builder: (context, model, child) => Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.black, fontSize: 17.sp),
                  ),
                  centerTitle: true,
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                body: SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 16),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),

                            // loginPng
                            Image.asset(AssetsRoutes.loginPng,
                                height: 20.h, width: 70.w),

                            SizedBox(
                              height: 5.h,
                            ),

                            // Username
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.w),
                              child: TextFieldWidget(
                                controller: model.emailController,
                                textInputType: TextInputType.emailAddress,
                                onChangeText: (v) {},
                                hintText: ("Email"),
                                suffixIcon: const Icon(Icons.email_outlined),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),

                            // Password
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.w),
                              child: TextFieldWidget(
                                controller: model.passwordController,
                                textInputType: TextInputType.text,
                                onChangeText: (v) {},
                                hintText: ("Password"),
                                isInputPassword: !model.isShow,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    model.setIsPassShow(!model.isShow);
                                  },
                                  child: model.isShow
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Colors.grey,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                ),
                                
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),

                            // Login Btn
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.w),
                              child: InkWell(
                                child: Container(
                                  width: 70.w,
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff575757),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                onTap: () {
                                  if (model.emailController.text
                                          .trim()
                                          .isEmpty ||
                                      model.passwordController.text
                                          .trim()
                                          .isEmpty) {
                                    ToastM.show(
                                        "The email or password is empty");
                                  } else {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomNavigationBarScreen()));
                                  }
                                },
                              ),
                            ),

                            SizedBox(
                              height: 1.h,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text("Forgot The Password ?",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey[400])),
                            ),

                            SizedBox(
                              height: 3.h,
                            ),

                            Container(
                              width: 70.w,
                              height: 50,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.facebook_outlined),
                                  label: const Text("Facebook")),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
