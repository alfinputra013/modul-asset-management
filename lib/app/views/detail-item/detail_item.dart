import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/app_bar.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({super.key});

  @override
  State<DetailItem> createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  final status = ["On Progress", "Done"];
  final spareport = ['Item 1', 'Item 2', 'Item 3', 'Item 4', "Item 5"];
  final items = ['Yes', 'No'];
  String? valueStatus;
  String? valueSpareport;
  String? valueItems;
  @override
  Widget build(BuildContext context) {
    Future<void> selectedDate(BuildContext context) async {
      await showDatePicker(
          context: context,
          firstDate: DateTime(200),
          lastDate: DateTime(2100),
          initialDate: DateTime.now());
    }

    DropdownMenuItem<String> buildMenuItemStatus(String item) =>
        DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );

    DropdownMenuItem<String> buildMenuItemSparepart(String item) =>
        DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );

    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarGlobal(
        title: "Asset Maintenance",
        centerTitle: false,
        backgroundColor: orangeMain,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: whiteColor,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name Maintenance",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                hintText: "Cleansing Hardisk",
                enabled: false,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                hintText: "Preventive Maintenance",
                enabled: false,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Description Maintenance",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                enabled: false,
                hintText: "Pembersihan Hardisk",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Date",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                enabled: false,
                hintText: "10/12/2022",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance by",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                hintText: "IT",
                enabled: false,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Status",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    "Select Status Here",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: greyColor,
                  ),
                  isExpanded: true,
                  value: valueStatus,
                  elevation: 1,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Colors.white,
                  items: status.map(buildMenuItemStatus).toList(),
                  onChanged: (valueStatus) =>
                      setState(() => this.valueStatus = valueStatus),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Date Completed",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.76,
                    height: 45,
                    child: TextField(
                      readOnly: true,
                      onTap: () {
                        selectedDate(context);
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 10),
                        hintText: "Select date Here",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                       onTap: () {
                        selectedDate(context);
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: orangeMain,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Center(
                          child: Icon(
                            Icons.calendar_month,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Service Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                hintText: "Replace Sparepart",
                enabled: false,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Replacement Spareport",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    "Select Here",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: greyColor,
                  ),
                  isExpanded: true,
                  value: valueItems,
                  elevation: 1,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Colors.white,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (valueItems) =>
                      setState(() => this.valueItems = valueItems),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    "Select Spareport Component",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: greyColor,
                  ),
                  isExpanded: true,
                  value: valueSpareport,
                  elevation: 1,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Colors.white,
                  items: spareport.map(buildMenuItem).toList(),
                  onChanged: (valueSpareport) =>
                      setState(() => this.valueSpareport = valueSpareport),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Cost",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                hintText: "Input Cost Here",
                enabled: true,
                keyboardType: TextInputType.phone,
                
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {},
                text: "Update",
                color: orangeMain,
                height: 45,
                width: double.infinity,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
