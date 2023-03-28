import 'package:flutter/material.dart';
import 'package:untitled5/public/style.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final bool secure;
  final bool isNumber;
  final Function(String?)? onSave;
  final int maxLines;

  // final IconData? icon;
  final Widget? suffixIcon;
  final Widget? prefix, prefixIcon;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool isNext;
  final bool isReadOnly;
  final int? maxLength;
  final String? upperText;
  final String? lableText;
  final String? errorText;
  final String? suffixText;
  final bool hasLabel;
  final Color? hintColor;
  final bool isRTL;
  final double horizontalMargin;
  final double verticalMargin;
  final bool multiLine;
  final Color? fillColor;
  final Color? textColor;
  final Color? labelColor;
  final double radius;
  final String? initialValue;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final String? initialText;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    this.prefix,
    this.isNumber = false,
    this.maxLines = 1,
    this.onPressed,
    this.onSave,
    this.secure = false,
    this.hint,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.onTap,
    this.isNext = true,
    this.maxLength,
    this.upperText,
    this.hasLabel = false,
    this.isRTL = false,
    this.hintColor = Colors.black,
    this.horizontalMargin = 0,
    this.multiLine = false,
    this.fillColor = Colors.white,
    this.textColor,
    this.labelColor,
    this.radius = 8,
    this.verticalMargin = 7,
    this.lableText,
    this.initialValue,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.errorText,
    this.isReadOnly = false,
    this.initialText,
    this.suffixText,
    this.controller,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final BorderRadius borderRadius = BorderRadius.circular(25);
  late bool _showPassword;

  @override
  void initState() {
    _showPassword = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.verticalMargin, horizontal: widget.horizontalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.upperText != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                widget.upperText!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          GestureDetector(
            onTap: () {
              widget.onTap!();
            },
            child: TextFormField(
              focusNode: widget.focusNode,
              controller: widget.controller,
              // controller: widget.initialText != null
              //     ? TextEditingController(text: widget.initialText)
              //     : null,
              readOnly: widget.isReadOnly,
              initialValue: widget.initialValue,
              obscureText: _showPassword,
              onSaved: widget.onSave,
              onChanged: widget.onChanged,
              textDirection: widget.isRTL == true ? TextDirection.ltr : null,
              maxLength: widget.maxLength,
              textInputAction: widget.multiLine
                  ? TextInputAction.newline
                  : widget.isNext
                      ? TextInputAction.next
                      : TextInputAction.done,
              keyboardType: widget.multiLine
                  ? TextInputType.multiline
                  : widget.isNumber
                      ? TextInputType.number
                      : widget.keyboardType,
              cursorColor: colorPrimary,
              validator: widget.validator,
              onTap: () {
                if (widget.isReadOnly) {
                  widget.onTap;
                }
              },
              maxLines: widget.maxLines,
              enabled: widget.onTap == null,
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              style: TextStyle(
                color: widget.textColor,
              ),
              decoration: InputDecoration(
                  filled: true,
                  errorStyle: const TextStyle(
                    height: 0,
                    color: Colors.red,
                  ),
                  errorText: widget.errorText,
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                  labelStyle: TextStyle(color: widget.labelColor, fontSize: 14),
                  fillColor: widget.fillColor ?? colorGrey.withOpacity(0.1),
                  counterStyle:
                      const TextStyle(fontSize: 0, color: Colors.transparent),
                  prefix: widget.prefix,
                  prefixIcon: widget.prefixIcon,
                  suffixText: widget.suffixText,
                  suffixStyle: TextStyle(color: colorPrimary),
                  suffixIcon: widget.suffixIcon ??
                      (widget.secure
                          ? IconButton(
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                !_showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: colorPrimary,
                                size: 20,
                              ),
                              onPressed: () => setState(
                                () => _showPassword = !_showPassword,
                              ),
                            )
                          : widget.suffixIcon),
                  hintText: widget.hint,
                  labelText: widget.lableText,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: widget.maxLines == 1 ? 15 : 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: BorderSide(color: colorPrimary),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: const BorderSide(color: Colors.transparent),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
