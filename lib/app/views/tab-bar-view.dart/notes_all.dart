import 'package:flutter/material.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/button.dart';

class NotesAll extends StatelessWidget {
  const NotesAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TextField(
              keyboardType: TextInputType.text,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD9D9D9),
                    width: 0.8,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:orangeMain,
                    width: 0.8,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(

                onPressed: () {},
                text: "Save",
              
                color: orangeMain,
                height: 45,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
