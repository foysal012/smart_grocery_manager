import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            Gap(60.0),

            Container(
                alignment: AlignmentGeometry.center,
                child: Image.asset('assets/images/grocery_cart_light.png', height: 100, width: 100)),
            Gap(10.0),

            Text('Smart Grocery Manager',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff005BBF)
              ),
            ),
            Gap(40.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff191c23)
                  ),
                ),
                Gap(8.0),

                Text('Log in to manage your shop\'s inventory',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff414754)
                  ),
                ),
                Gap(40.0),

                Text('Email or Username',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff414754)
                  ),
                ),
                Gap(8.0),

                TextFormField(
                  controller: emailTextController,
                  decoration: InputDecoration(
                    fillColor: Color(0xffE0E2EC),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    suffixIcon: Icon(Icons.email_outlined, color: Color(0xff727785)),
                    hintText: 'admin@precision.com',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff727785)
                    )
                  ),
                ),
                Gap(24.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Password',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff414754)
                      ),
                    ),

                    Text('Forgot password?',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff005BBF)
                      ),
                    ),
                  ],
                ),
                Gap(8.0),

                TextFormField(
                  controller: passwordTextController,
                  decoration: InputDecoration(
                      fillColor: Color(0xffE0E2EC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      suffixIcon: Icon(Icons.lock_outline, color: Color(0xff727785)),
                      hintText: '********',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff727785)
                      )
                  ),
                ),
                Gap(24.0),
                
                Row(
                  children: [
                    Checkbox(
                      value: isRemember,
                      activeColor: const Color(0xff005BBF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(Radius.circular(25.0))
                      ),
                      onChanged: (value) {
                        setState(() {
                          isRemember = value ?? false;
                        });
                      },
                    ),
                    Gap(5.0),

                    Text('Remember this device',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff414754)
                      ),
                    )
                  ],
                ),
                Gap(24.0),
                
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: 54,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color(0xff005BBF),
                    ),
                    // alignment: AlignmentGeometry.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF)
                          )
                        ),
                        Gap(5.0),

                        Icon(Icons.login, color: Colors.white)
                      ],
                    ),
                  ),
                ),
                Gap(40.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New administrator?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff414754)
                      ),
                    ),
                    Gap(5.0),

                    Text('Request access',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff005BBF)
                      ),
                    )
                  ],
                ),
                Gap(32.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('PRIVACY POLICY',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff727785)
                      ),
                    ),
                    Gap(24.0),

                    Text('SUPPORT',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff727785)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
