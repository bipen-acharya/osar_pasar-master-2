import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:osar_pasar/screens/item.dart';
import 'package:osar_pasar/widgets/custom_text_field.dart';

import '../controller/auth/address_controller.dart';

class AddressPage extends StatelessWidget {
  AddressPage({super.key});

  final c = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color(0xFF494949).withOpacity(0.06),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "Address",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                suffixIcon: const Icon(Icons.calendar_month),
                onTap: () => c.chooseDate(context),
                hint: DateFormat.yMd().format(c.selectedDate.value),
                readOnly: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                suffixIcon: const Icon(Icons.lock_clock),
                onTap: () => c.chooseTime(context),
                hint: c.formattingTimeOfDay(c.selectedTime.value),
                readOnly: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: "Select pickup address",
                readOnly: true,
                onTap: c.showPickUpAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              // CustomTextField(
              //   hint: "Select destination address",
              //   readOnly: true,
              //   onTap: c.showPickUpAddress,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color(0xff00183F),
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: (() => Get.to(() => const ItemAddScreen())),
                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
