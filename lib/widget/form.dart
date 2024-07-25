import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final bool enabled;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.enabled = true,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      enabled: enabled,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
        ),
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        hintText: hintText,
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
        ),
        filled: true,
        fillColor: enabled ? Colors.white : const Color(0xFFF9F9F9),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: onSuffixIconPressed,
              )
            : null,
      ),
    );
  }
}


class CustomDropdownButton extends StatelessWidget {
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final double borderRadius;
  final Color borderColor;
  final double horizontalPadding;
  final double? width;
  final double? height;
  final DropdownMenuItem<String> Function(String)? itemBuilder;

  CustomDropdownButton({
    required this.value,
    required this.items,
    required this.onChanged,
    this.borderRadius = 10.0,
    this.borderColor = const Color(0xFFD9D9D9),
    this.horizontalPadding = 10.0,
    this.width,
    this.height,
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: DropdownButton<String>(
        isExpanded: true,
        value: value,
        items: items.map((item) => itemBuilder?.call(item) ?? buildMenuItem(item)).toList(),
        onChanged: onChanged,
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Text(item),
    );
  }
}


// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final bool enabled;
//   final TextEditingController? controller;
//   final EdgeInsets contentPadding;

//   const CustomTextField({
//     Key? key,
//     required this.hintText,
//     this.enabled = false,
//     this.controller,
//     this.contentPadding = const EdgeInsets.symmetric(horizontal: 10),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       enabled: enabled,
//        controller: controller,
//       decoration: InputDecoration(
//         enabledBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           borderSide: BorderSide(color: Color(0xFFD9D9D9)),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           borderSide: BorderSide(color: Color(0xFFD9D9D9)),
//         ),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: contentPadding,
//       ),
//     );
//   }
// }
