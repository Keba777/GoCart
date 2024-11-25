import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gocart/core/routes/app_router.gr.dart';
import 'package:gocart/core/theme/colors.dart';
import 'package:gocart/core/theme/typography.dart';
import 'package:gocart/features/authentication/presentation/widgets/buttons.dart';
import 'package:gocart/features/authentication/presentation/widgets/text_field.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Get Started",
                          style: TextStyles.formHeading,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 50),
                          child: Text(
                            "Enter your details below",
                            style: TextStyles.formSubheading,
                          ),
                        ),
                        const CustomTextField(
                          hintText: "Mobile Number",
                          obscureText: false,
                          keyboardType: TextInputType.phone,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: CustomTextField(
                            hintText: "Password",
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 50),
                          child: CustomTextField(
                            hintText: "Confirm Password",
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: CustomMainButton(
                            onPressed: () {},
                            btnText: "Sign Up",
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account",
                              style: TextStyles.formSubheading,
                            ),
                            CustomTextButton(
                              btnText: "Login",
                              routeName: LoginRoute(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
