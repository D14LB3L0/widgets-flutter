import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;
  final String formPropery;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.sufixIcon,
    this.keyBoardType,
    this.obscureText = false,
    required this.formPropery,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formPropery] = value;
      },
      validator: (value) {
        if (value == null) return 'This field is required';
        return value.length < 3 ? '3 letters min' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: icon == null ? null : Icon(icon),
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
        ),
      ),
    );
  }
}
