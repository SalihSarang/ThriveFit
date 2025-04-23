import 'package:flutter/cupertino.dart';
import 'package:levelup/core/theme/app_theme.dart';

primaryTextStyle({double? size, Color? textColor}) {
  return TextStyle(
    color: textColor ?? AppTheme.textPrimary,
    fontSize: size ?? 15,
  );
}

secondaryTextStyl({double? size, Color? textColor}) {
  return TextStyle(
    color: textColor ?? AppTheme.textSecondary,
    fontSize: size ?? 15,
  );
}

customText({required String text, double? size, Color? color}) {
  return Text(
    text,
    style: secondaryTextStyl(
      textColor: color ?? AppTheme.textSecondary,
      size: size,
    ),
  );
}
