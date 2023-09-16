// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template app_text_field}
/// A text field component based on material [TextFormField] widget with a
/// fixed, left-aligned label text displayed above the text field.
/// {@endtemplate}
class AppTextField extends StatefulWidget {
  /// {@macro app_text_field}
  const AppTextField({
    Key? key,
    this.initialValue,
    this.autoFillHints,
    this.controller,
    this.inputFormatters,
    this.autocorrect = true,
    this.readOnly = false,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.errorText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.border,
    this.textAlign,
    this.hintTextStyle,
    this.focusedBorder,
    this.focusNode,
    this.enabledBorder,
    this.cursorColor,
    this.decoration,
    this.contentPadding,
    this.showFocusBorder = false,
    this.showNeutralBorder = false,
    this.fillColor = AppColors.white,
    this.textEnabled = true,
    this.borderDecoration,
    this.enableInteractiveSelection,
  }) : super(key: key);

  final Decoration? borderDecoration;

  //For disabling copy-pasting text into Text_Form_Field
  final bool? enableInteractiveSelection;

  /// A value to initialize the field to.
  final String? initialValue;
  final InputDecoration? decoration;
  final EdgeInsetsGeometry? contentPadding;

  /// List of auto fill hints.
  final Iterable<String>? autoFillHints;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;

  /// Optional input validation and formatting overrides.
  final List<TextInputFormatter>? inputFormatters;

  /// Whether to enable autocorrect.
  /// Defaults to true.
  final bool autocorrect;

  /// Whether the text field should be read-only.
  /// Defaults to false.
  final bool readOnly;

  /// Text that suggests what sort of input the field accepts.
  final String? labelText;

  /// Text that suggests what sort of input the field accepts.
  final String? hintText;

  /// Text style that suggests what sort of style will be applied on hint text.
  final TextStyle? hintStyle;

  /// Text that appears below the field.
  final String? errorText;

  /// A widget that appears before the editable part of the text field.
  final Widget? prefix;

  /// A widget that appears after the editable part of the text field.
  final Widget? suffix;

  /// The type of keyboard to use for editing the text.
  /// Defaults to [TextInputType.text] if maxLines is one and
  /// [TextInputType.multiline] otherwise.
  final TextInputType? keyboardType;

  /// Called when the user inserts or deletes texts in the text field.
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  final ValueChanged<String>? onSubmitted;

  /// Called when the text field has been tapped.
  final VoidCallback? onTap;

  /// type of border for input field
  final InputBorder? border;

  /// align text in input field
  final TextAlign? textAlign;

  //style hintText in input Field
  final TextStyle? hintTextStyle;

  ///focused border of input filed
  final InputBorder? focusedBorder;

  ///focuse node of input filed
  final FocusNode? focusNode;
  // type of border for input field when it is enabled
  final InputBorder? enabledBorder;

  // Color of cursor
  final Color? cursorColor;

  /// Whelter to show black border around text field on focus
  final bool showFocusBorder;

  //Show neutral shade6 border
  final bool showNeutralBorder;

  //Fill background Color
  final Color fillColor;

  //To Enable or Disable input text
  final bool textEnabled;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode textFieldFocusNode;
  Color focusBorderColor = AppColors.neutral.shade4;
  @override
  void initState() {
    textFieldFocusNode = widget.focusNode ?? FocusNode();
    // Add listener for focus only if its required
    if (widget.showFocusBorder) {
      textFieldFocusNode.addListener(() {
        setState(() {
          focusBorderColor = textFieldFocusNode.hasFocus
              ? AppColors.black
              : AppColors.neutral.shade4;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textFieldBorder = widget.border ??
        UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: widget.borderDecoration ??
              BoxDecoration(
                border: Border.all(
                  color: focusBorderColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
          child: TextFormField(
            enableInteractiveSelection:
                widget.enableInteractiveSelection ?? true,
            focusNode: textFieldFocusNode,
            textAlign: widget.textAlign ?? TextAlign.start,
            key: widget.key,
            initialValue: widget.initialValue,
            controller: widget.controller,
            inputFormatters: widget.inputFormatters,
            keyboardType: widget.keyboardType,
            autocorrect: widget.autocorrect,
            readOnly: widget.readOnly,
            autofillHints: widget.autoFillHints,
            cursorColor: widget.cursorColor ?? AppColors.primary.shade1,
            style: AppTextStyle.f14w500Blue,
            onFieldSubmitted: widget.onSubmitted,
            cursorHeight: 18,
            decoration: widget.decoration ??
                InputDecoration(
                  enabled: widget.textEnabled,
                  hintText: widget.hintText,
                  hintStyle: widget.hintTextStyle,
                  errorText: widget.errorText,
                  prefixIcon: widget.prefix,
                  labelText: widget.labelText,
                  labelStyle: AppTextStyle.f12w400Neutral6,
                  prefixIconColor: AppColors.neutral.shade8,
                  suffixIcon: widget.suffix,
                  border: textFieldBorder,
                  focusedBorder: widget.focusedBorder ?? textFieldBorder,
                  enabledBorder: widget.enabledBorder ?? textFieldBorder,
                  contentPadding: widget.contentPadding ??
                      EdgeInsets.symmetric(
                          horizontal: 16.widthMultiplier,
                          vertical: 16.heightMultiplier),
                  // focusedBorder: textFieldBorder,
                  filled: true,
                  // enabledBorder: textFieldBorder,
                  isDense: true,
                  fillColor: widget.fillColor,
                ),
            onChanged: widget.onChanged,
            onTap: widget.onTap,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    textFieldFocusNode.dispose();
    super.dispose();
  }
}
