import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gocart/core/theme/colors.dart';
import 'package:gocart/core/theme/typography.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 80),
            child: Center(
              child: Text(
                "CartGo",
                style: TextStyles.titleScreen,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.deepBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        "Welcome Back!",
                        style: TextStyles.formHeading,
                      ),
                    ),
                    Text(
                      "Enter your details below",
                      style: TextStyles.formSubheading,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
