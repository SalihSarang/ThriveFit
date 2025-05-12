import 'package:flutter/material.dart';
import 'package:levelup/core/theme/app_theme.dart';
import 'package:levelup/shared/media_query/media_query.dart';
import 'package:levelup/shared/widgets/my_appbar.dart';
import 'package:levelup/shared/widgets/textfield_widget.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: appBar(title: 'Create Account'),
      body: Padding(
        padding: safeAreaPadding(context),
        child: SafeArea(
          child: ListView(
            children: [
              textFieldWithTitle(
                tieldTitle: 'Full Name',
                hintText: 'Name',
                context: context,
              ),
              SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
              textFieldWithTitle(
                tieldTitle: 'Email',
                hintText: 'Email',
                context: context,
              ),
              SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
              textFieldWithTitle(
                tieldTitle: 'Password',
                hintText: 'Create Password',
                context: context,
              ),
              SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
              textFieldWithTitle(
                tieldTitle: 'Confirm Password',
                hintText: 'Confirm your password',
                context: context,
              ),
              SizedBox(height: sizedBoxHeight(context, adjustHeight: 0.02)),
              textFieldWithTitle(
                tieldTitle: 'Email',
                hintText: 'Email',
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
