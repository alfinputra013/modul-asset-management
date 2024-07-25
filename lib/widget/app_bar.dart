import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';

class AppBarGlobal extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget? leading;
  final Color backgroundColor;
  final bool centerTitle;
  final bool automaticallyImplyLeading;

  const AppBarGlobal({
    Key? key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.backgroundColor = Colors.blue,
    this.centerTitle = true,
    this.automaticallyImplyLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.poppins(
            color: whiteColor, fontWeight: FontWeight.w500, fontSize: 15),
      ),
      actions: actions,
      leading: leading,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: centerTitle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(18),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
