import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../../common/custom_button.dart';
import '../../../common/text_style.dart';
import '../../onboarding/onboard02.dart';

class LogInUser extends StatefulWidget {
  const LogInUser({super.key});

  @override
  State<LogInUser> createState() => _LogInUserState();
}

class _LogInUserState extends State<LogInUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // color: secondaryColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image/login_bg.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: blackColor50,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage(
                            'assets/image/back_arrow.png',
                          ),
                          color: cardColor,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/image/logo_white.png',
                      height: 54,
                      width: 205.24,
                    ),
                  ],
                ),
              ),
              //
              Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: cardColor,
                      //border: Border.all(width: 1, color: blackColor05),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Again!',
                          style: CustomTextStyle.tp32800,
                        ),
                        //
                        Text(
                          'Sign In to your Account.',
                          style: CustomTextStyle.ts14reg,
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              makeInput05tp5(
                                  label: 'Email',
                                  hintText: 'johndoe@gmail.com'),
                              makeInput05tp5(
                                  label: 'Password',
                                  hintText: '********',
                                  obscureText: true),
                              //

                              Text(
                                'Forgot your Password?',
                                style: CustomTextStyle.tp14med,
                              ),
                            ],
                          ),
                        ),
                        //

                        ScBtn330(
                          btnText: 'Sign In',
                          //onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OnboardUser02()),
                          //);
                          //},
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Image.asset(
                            'assets/image/orwith.jpg',
                          ),
                        ),

                        CcBtn330(
                          image: 'assets/image/google.jpg',
                          btnText: 'Sign In with Google',
                        ),
                        CcBtn330(
                          image: 'assets/image/fb.jpg',
                          btnText: 'Sign In with Facebook',
                        ),

                        //
                        Row(
                          children: <Widget>[
                            Text(
                              'Not a member yet? ',
                              style: CustomTextStyle.ts14reg,
                            ),
                            TextButton(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: textPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
