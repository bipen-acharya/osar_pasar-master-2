import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nepal_administrative_division/enums.dart';
import 'package:nepal_administrative_division/nepal_administrative_division.dart';

class AddressController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  late String state = "";
  late String province;
  late String localLevel;
  late Set<String> location;

  chooseDate(BuildContext context) async {
    log("choose date");
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022, DateTime.now().month, DateTime.now().day),
      lastDate: DateTime(2050),
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
      log(selectedDate.toString());
    }
  }

  chooseTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime.value,
    );
    if (pickedTime != null) {
      selectedTime.value = pickedTime;
    }
  }

  String formattingTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final date = DateTime(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
    final format = DateFormat.jm();
    return format.format(date);
  }

  showPickUpAddress() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45.0),
        ),
      ),
      context: Get.context!,
      builder: ((context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 2.2,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 45, right: 35, left: 35, bottom: 31),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NepalAdminstrativeArea(
                  areaType: AreaType.province,
                  ontap: (value, areatype) {
                    province = value;
                  },
                ),
                NepalAdminstrativeArea(
                  areaType: AreaType.district,
                  ontap: (value, areatype) {
                    state = value;
                  },
                ),
                NepalAdminstrativeArea(
                  areaType: AreaType.localLevel,
                  ontap: (value, areatype) {
                    localLevel = value;
                    debugPrint(state);
                  },
                ),
                const SizedBox(
                  height: 38,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff00183F),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    location = {"$province ", " $state", " $localLevel"}.obs;

                    debugPrint(location.toString());
                  },
                  child: const Text("Login"),
                ),
              ],
            ),

            //  Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: const [
            //     Text("Location"),
            //     SizedBox(
            //       height: 13,
            //     ),
            //     CustomTextField(
            //       hint: "Select province",
            //       suffixIcon: Icon(Icons.arrow_drop_down),
            //       readOnly: true,
            //     ),

            //   ],
            // ),
          ),
        );
      }),
    );
  }

  showDestinationAddress() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45.0),
        ),
      ),
      context: Get.context!,
      builder: ((context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Column(
            children: const [
              SizedBox(
                height: 17,
              ),
            ],
          ),
        );
      }),
    );
  }
}
