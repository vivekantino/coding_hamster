import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

/// {@template app_button}
/// Button with text displayed in the application.
/// {@endtemplate}
class AppButton extends StatelessWidget {
  /// {@macro app_button}
  ///
  AppButton._({
    required this.child,
    this.onPressed,
    Color? buttonColor,
    Color? disabledButtonColor,
    Color? foregroundColor,
    Color? disabledForegroundColor,
    BorderSide? borderSide,
    double? elevation,
    TextStyle? textStyle,
    Size? maximumSize,
    Size? minimumSize,
    EdgeInsets? padding,
    Widget? leftIcon,
    Widget? rightIcon,
    super.key,
  })  : _buttonColor = buttonColor ?? AppColors.primary.shade4,
        _disabledButtonColor = disabledButtonColor ?? AppColors.primary.shade2,
        _borderSide = borderSide,
        _foregroundColor = foregroundColor ?? AppColors.white,
        _disabledForegroundColor =
            disabledForegroundColor ?? AppColors.themeLight,
        _elevation = elevation ?? 0,
        _textStyle = textStyle,
        _maximumSize = maximumSize ?? _defaultMaximumSize,
        _minimumSize = minimumSize ?? _defaultMinimumSize,
        _padding = padding ?? _defaultPadding,
        _leftIcon = leftIcon,
        _rightIcon = rightIcon;

  /// medium size button
  AppButton.primaryMedium({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? elevation,
    EdgeInsets? padding,
    Widget? leftIcon,
    Widget? rightIcon,
  }) : this._(
          key: key,
          onPressed: onPressed,
          child: child,
          foregroundColor: AppColors.white,
          disabledForegroundColor: AppColors.primary.shade3,
          disabledButtonColor: AppColors.primary.shade2,
          elevation: elevation,
          padding: padding??_defaultPadding,
          maximumSize: _defaultMaximumSize,
          minimumSize: _defaultMinimumSize,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );

  /// small size button
  AppButton.primarySmall({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? elevation,
    Widget? leftIcon,
    EdgeInsets? padding,
    Widget? rightIcon,
    Color? buttonColor,
    Color? foregroundColor,
    BorderSide? borderSide,
  }) : this._(
          key: key,
          onPressed: onPressed,
          child: child,
          elevation: elevation,
          textStyle: _smallTextStyle,
          padding: padding ?? _smallPadding,
          maximumSize: _smallMaximumSize,
          minimumSize: _smallMinimumSize,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
          buttonColor: buttonColor,
          foregroundColor: foregroundColor,
          borderSide: borderSide,
        );

  /// dark button
  AppButton.darkButton({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? elevation,
    Widget? leftIcon,
    Widget? rightIcon,
  }) : this._(
          key: key,
          onPressed: onPressed,
          child: child,
          buttonColor: AppColors.neutral.shade8,
          disabledButtonColor: AppColors.primary.shade5,
          disabledForegroundColor: AppColors.white,
          elevation: elevation,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );

  /// white border button
  AppButton.whiteBorderButton({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? elevation,
    Widget? leftIcon,
    Widget? rightIcon,
    BorderSide? borderSide,
    EdgeInsets? padding,
  }) : this._(
          key: key,
          padding: padding,
          onPressed: onPressed,
          child: child,
          buttonColor: Colors.transparent,
          disabledButtonColor: AppColors.primary.shade5,
          disabledForegroundColor: AppColors.white,
          borderSide: borderSide ?? BorderSide(color: AppColors.primary.shade1),
          elevation: elevation,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );

  /// The maximum size of the small variant of the button.
  static const _smallMaximumSize = Size(double.infinity, 40);

  /// The minimum size of the small variant of the button.
  static const _smallMinimumSize = Size(0, 40);

  /// The maximum size of the button.
  static final _defaultMaximumSize = Size(double.infinity, 54.heightMultiplier);

  /// The minimum size of the button.
  static final _defaultMinimumSize = Size(double.infinity, 32.heightMultiplier);

  /// The padding of the small variant of the button.
  static const _smallPadding = EdgeInsets.symmetric(vertical: 6);

  /// The padding of the the button.
  static final _defaultPadding = EdgeInsets.symmetric(
    vertical: 16.widthMultiplier,
  );

  /// The text style of the small variant of the button.
  static final _smallTextStyle = AppTextStyle.f14w400White;

  /// [VoidCallback] called when button is pressed.
  /// Button is disabled when null.
  final VoidCallback? onPressed;

  /// A background color of the button.
  ///
  /// Defaults to [Colors.white].
  final Color _buttonColor;

  /// A disabled background color of the button.
  ///
  /// Defaults to [AppColors.disabledButton].
  final Color? _disabledButtonColor;

  /// Color of the text, icons etc.
  ///
  /// Defaults to [AppColors.black].
  final Color _foregroundColor;

  /// Color of the disabled text, icons etc.
  ///
  /// Defaults to [AppColors.disabledForeground].
  final Color _disabledForegroundColor;

  /// A border of the button.
  final BorderSide? _borderSide;

  /// Elevation of the button.
  final double _elevation;

  /// [TextStyle] of the button text.
  ///
  /// Defaults to [TextTheme.labelLarge].
  final TextStyle? _textStyle;

  /// The maximum size of the button.
  ///
  /// Defaults to [_defaultMaximumSize].
  final Size _maximumSize;

  /// The minimum size of the button.
  ///
  /// Defaults to [_defaultMinimumSize].
  final Size _minimumSize;

  /// The padding of the button.
  ///
  /// Defaults to [EdgeInsets.zero].
  final EdgeInsets _padding;

  /// [Widget] Icon displayed to left of the button's child
  final Widget? _leftIcon;

  /// [Widget] Icon displayed to right of the button's child
  final Widget? _rightIcon;

  /// [Widget] displayed on the button.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textStyle = _textStyle ?? AppTextStyle.f16w500White;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        maximumSize: MaterialStateProperty.all(_maximumSize),
        padding: MaterialStateProperty.all(_padding),
        minimumSize: MaterialStateProperty.all(_minimumSize),
        textStyle: MaterialStateProperty.all(textStyle),
        backgroundColor: onPressed == null
            ? MaterialStateProperty.all(_disabledButtonColor)
            : MaterialStateProperty.all(_buttonColor),
        elevation: MaterialStateProperty.all(_elevation),
        foregroundColor: onPressed == null
            ? MaterialStateProperty.all(_disabledForegroundColor)
            : MaterialStateProperty.all(_foregroundColor),
        side: MaterialStateProperty.all(_borderSide),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_leftIcon != null) ...[
            _leftIcon!,
            SizedBox(
              width: 16.widthMultiplier,
            ),
          ],
          child,
          if (_rightIcon != null) ...[
            SizedBox(
              width: 16.widthMultiplier,
            ),
            _rightIcon!,
          ],
        ],
      ),
    );
  }
}
