import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';

class CustomListItem extends StatelessWidget {
  final String maintenance;
  final String subtitle1;
  final String subtitle2;
  final String date;
  final IconData? icon;
  final Color? iconColor;

  const CustomListItem({
    Key? key,
    required this.maintenance,
    required this.subtitle1,
    required this.subtitle2,
    required this.date,
    this.icon = Icons.arrow_forward_ios_sharp, // Default icon
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      maintenance,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: orangeMain,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      subtitle1 + " | " + subtitle2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child: Text(
                  //     subtitle2,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 13,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      date,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
              child: Icon(
                icon,
                size: 14,
                color: iconColor ?? Colors.black,
              ),
            ),
          ],
        ),
        Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
          height: 10,
        ),
      ],
    );
  }
}

class CustomOpname extends StatelessWidget {
  final String kode;
  final String merk;
  final String asset;
  final String condition;
  final String location;
  final IconData? icon;
  final Color? iconColor;
  final String? image1;
  final String? image2;

  const CustomOpname({
    Key? key,
    required this.kode,
    required this.asset,
    required this.merk,
    required this.condition,
    required this.location,
    this.icon = Icons.arrow_forward_ios_sharp, // Default icon
    this.iconColor,
    this.image1,
    this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 6,),
                  //  if (image1 != null || image2 != null) ...[
                  //   Row(
                  //     children: [
                  //       if (image1 != null)
                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 8.0),
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(10),
                  //               // image: DecorationImage(image: AssetImage(image1!), fit: BoxFit.fill),
                  //             ),
                  //             // child: Image.asset(
                  //             //   image1!,
                  //             //   height: 50,
                  //             //   width: 50,
                  //             // ),
                  //           ),
                  //         ),
                  //       if (image2 != null)
                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 8.0),
                  //           child: Image.asset(
                  //             image2!,
                  //             height: 50,
                  //             width: 50,
                  //           ),
                  //         ),
                  //     ],
                  //   ),
                  // ],
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child: Text(
                  //     kode,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 14,
                  //       color: orangeMain,
                  //     ),
                  //   ),
                  // ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '0112442',
                          style: GoogleFonts.poppins(
                              color: orangeMain,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: ' | ',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        WidgetSpan(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green[300],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5,),
                            child: Text(
                              "Good",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )),
                        // TextSpan(
                        //     text: "Good",
                        //     style: GoogleFonts.poppins(
                        //       fontWeight: FontWeight.w500,
                        //       color: blackColor,
                        //       fontSize: 13,
                        //       backgroundColor: Colors.green
                        //     ),),
                        // TextSpan(
                        //   text: ' world!',

                        //   style: TextStyle(
                        //     height: 2,

                        //     backgroundColor: Color(0xFFFEFDD2),
                        //     color: Color(0xFF938709),
                        //     fontSize: 12,
                        //     fontWeight: FontWeight.w600
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      merk + " | " + asset,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child: Text(
                  //     condition,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 13,
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      location,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(image1!), fit: BoxFit.fill)),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child: Text(
                  //     asset,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 13,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: orangeMain,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                child: Icon(
                  icon,
                  size: 20,
                  color: iconColor ?? Colors.grey,
                ),
              ),
            ),
          ],
        ),
        const Divider(color: Color(0xFFD9D9D9)),
      ],
    );
  }
}
