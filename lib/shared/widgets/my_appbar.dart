import 'package:flutter/material.dart';
import 'package:levelup/core/theme/app_theme.dart';
import 'package:levelup/core/theme/text_style.dart';

appBar({String? title, bool? centerTitle}) {
  return AppBar(
    iconTheme: IconThemeData(color: AppTheme.textPrimary),
    backgroundColor: AppTheme.primary,
    centerTitle: centerTitle ?? true,
    title:
        title != null ? Text(title, style: primaryTextStyle(size: 30)) : null,
  );
}
