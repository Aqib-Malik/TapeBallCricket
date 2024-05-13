import 'package:flutter/material.dart';
import 'package:tape_ball_app/utils/const.dart';
import 'package:tape_ball_app/views/authScreens/screens/signin_screen.dart';
import 'package:tape_ball_app/views/authScreens/screens/signup_screen.dart';
import 'package:tape_ball_app/views/authScreens/theme/theme.dart';
import 'package:tape_ball_app/views/authScreens/widgets/customScaffoldWelcome.dart';
import 'package:tape_ball_app/views/authScreens/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWelcome(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:  TextSpan(
                      children: [
                        TextSpan(
                            text: title,
                            style: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                '\n$tagline',
                            style: const TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                   Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap:  const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
