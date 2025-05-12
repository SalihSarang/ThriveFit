import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:levelup/core/theme/app_theme.dart';
import 'package:levelup/core/theme/text_style.dart';
import 'package:levelup/shared/media_query/media_query.dart';
import 'package:levelup/shared/widgets/buttons.dart';
import 'package:levelup/shared/widgets/my_appbar.dart';
import 'package:levelup/shared/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: AppTheme.primary,
      body: Padding(
        padding: safeAreaPadding(context),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: 'Welcome',
                    color: AppTheme.textPrimary,
                    size: 45,
                  ),
                  customText(
                    text: 'Create an account or log in to continue',
                    size: 19,
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.04)),
                  textField(labelText: 'Email', context: context),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
                  textField(labelText: 'Password', context: context),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.05)),
                  button(
                    onPresed:
                        () => Navigator.pushNamed(context, '/createAccount'),
                    context: context,
                    buttonText: 'Create Account',
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.01)),
                  button(
                    onPresed: () {},
                    context: context,
                    buttonText: 'Log In',
                    buttonColor: AppTheme.primary,
                    textColor: AppTheme.buttonPrimary,
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
                  Center(
                    child: defaultTextButton(
                      buttonText: 'Forgot Password?',
                      context: context,
                      onPressed: () {},
                      textSize: 17,
                    ),
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.01)),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: AppTheme.secondary, thickness: 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: customText(text: "Or continue with", size: 16),
                      ),
                      Expanded(
                        child: Divider(color: AppTheme.secondary, thickness: 2),
                      ),
                    ],
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.01)),

                  Center(
                    child: Container(
                      height: sizedBoxHeight(context, adjustHeight: 0.052),
                      width: sizedBoxWidth(context, adjustWidth: 0.12),
                      decoration: BoxDecoration(
                        color: AppTheme.secondary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.google, size: 33),
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.04)),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(text: 'By continuing, you agree to our '),
                          customTextButton(
                            onPressed: () {},
                            buttonText: 'Terms of Service ',
                          ),
                          customText(text: 'and'),
                        ],
                      ),
                      Center(
                        child: customTextButton(
                          onPressed: () {},
                          buttonText: 'Privacy Policy',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
