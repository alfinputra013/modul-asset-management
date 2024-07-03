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
            const TextField(
              keyboardType: TextInputType.text,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 1.3,
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
                color: Colors.blueAccent,
                height: 35,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
