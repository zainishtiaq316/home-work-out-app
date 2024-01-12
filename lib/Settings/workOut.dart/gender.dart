import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class genderScreen extends StatefulWidget {
  const genderScreen({Key? key});

  @override
  State<genderScreen> createState() => _genderScreenState();
}

class _genderScreenState extends State<genderScreen> {
  String selectedGender = 'male';
  int selectedYear = 1990;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Gender",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Column(
              children: [
                otherSettings("Gender", selectedGender, null, () async {
                  final result = await navigateToGenderSelection();
                  if (result != null) {
                    setState(() {
                      selectedGender = result;
                    });
                  }
                }),
                SizedBox(
                  height: 10,
                ),
                otherSettings("Year of Birth", null, selectedYear.toString(),
                    () async {
                  final result = await navigateToYearSelection();
                  if (result != null) {
                    setState(() {
                      selectedYear = result;
                    });
                  }
                })
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget otherSettings(
      String name, String? value, String? year, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$name",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          if (value != null)
            Text(
              "$value",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          if (year != null)
            Text(
              "$year",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.3,
          )
        ],
      ),
    );
  }

  Future<String?> navigateToGenderSelection() async {
    return await showGenderDialog();
  }

  Future<int?> navigateToYearSelection() async {
    return await showYearPicker(selectedYear);
  }

  showGenderDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        selectedGender = value!;
                      });
                      Navigator.pop(context, value);
                    },
                  ),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'Female',
                    groupValue: selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        selectedGender = value!;
                      });
                      Navigator.pop(context, value);
                    },
                  ),
                  Text("Female"),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  showYearPicker(int? value) async {
    int? selectedValue = await showModalBottomSheet<int>(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Text(
                  "Date",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(selectedYear),
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      selectedYear = newDate.year;
                    });
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ))),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context, selectedYear);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade700,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );

    if (selectedValue != null) {
      setState(() {
        selectedYear = selectedValue;
      });
    }
  }
}
