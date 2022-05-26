import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_flutter/feature/home_screen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode emailFocusNode = FocusNode();
  TextEditingController emailController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.h,
            child: Image.network("https://m.media-amazon.com/images/I/518fAl617rL._AC_SY1000_.jpg"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.h),
            child: _emailFormField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.h),
            child: _passwordFormField(),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  30.w,
                  5.h,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 10.sp),
              ))
        ],
      ),
    );
  }

  TextFormField _passwordFormField() {
    return TextFormField(
      focusNode: passwordFocusNode,
      keyboardType: TextInputType.emailAddress,
      controller: passwordController,
      validator: (value) {
        if (value!.isEmpty) {}
        return null;
      },
      autofillHints: [AutofillHints.password],
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        icon: Icon(
          Icons.email_outlined,
          size: 4.h,
        ),
      ),
    );
  }

  TextFormField _emailFormField() {
    return TextFormField(
      focusNode: emailFocusNode,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) {
        if (value!.isEmpty) {}
        return null;
      },
      autofillHints: [AutofillHints.email],
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        icon: Icon(
          Icons.email_outlined,
          size: 4.h,
        ),
      ),
    );
  }
}
