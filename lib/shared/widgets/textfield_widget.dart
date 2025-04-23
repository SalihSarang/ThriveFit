import 'package:flutter/material.dart';
import 'package:levelup/core/theme/app_theme.dart';
import 'package:levelup/core/theme/text_style.dart';
import 'package:levelup/shared/media_query/media_query.dart';

Widget textField({
  required String labelText,
  Icon? sufixIcon,
  required BuildContext context,
}) {
  return SizedBox(
    width: sizedBoxWidth(context, adjustWidth: 0.9),
    child: TextFormField(
      decoration: InputDecoration(
        suffixIcon: sufixIcon,
        labelText: labelText,
        labelStyle: secondaryTextStyl(),
        filled: true,
        fillColor: AppTheme.secondary,
        contentPadding: EdgeInsets.symmetric(
          vertical: sizedBoxHeight(context, adjustHeight: 0.02),
          horizontal: sizedBoxWidth(context, adjustWidth: 0.05),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppTheme.secondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppTheme.secondary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      cursorColor: AppTheme.textSecondary,
    ),
  );
}
