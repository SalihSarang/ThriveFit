import 'package:flutter/material.dart';
import 'package:levelup/core/theme/app_theme.dart';
import 'package:levelup/core/theme/text_style.dart';
import 'package:levelup/shared/media_query/media_query.dart';

button({
  required VoidCallback onPresed,
  required BuildContext context,
  required String buttonText,
  Color? buttonColor,
  Color? textColor,
}) {
  return SizedBox(
    height: sizedBoxHeight(context, adjustHeight: 0.06),
    width: sizedBoxWidth(context, adjustWidth: 1),
    child: ElevatedButton(
      onPressed: onPresed,
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(color: AppTheme.buttonPrimary),
        ),
        backgroundColor: WidgetStateProperty.all(
          buttonColor ?? AppTheme.buttonPrimary,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      child: customText(
        text: buttonText,
        size: 20,
        color: textColor ?? AppTheme.textPrimary,
      ),
    ),
  );
}

defaultTextButton({
  required VoidCallback onPressed,
  required BuildContext context,
  required String buttonText,
  double? textSize,
  Color? textColor,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(buttonText, style: secondaryTextStyl(size: textSize)),
  );
}

customTextButton({
  required VoidCallback onPressed,
  required String buttonText,
  Color? textColor,
  double? textSize,
}) {
  return InkWell(
    onTap: onPressed,
    child: Text(
      buttonText,
      style: primaryTextStyle(textColor: textColor, size: textSize),
    ),
  );
}
