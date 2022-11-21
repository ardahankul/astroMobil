import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'İsim',
              ),
            ),
          ),
          Container(
            child: InputDatePickerFormField(
              fieldLabelText: "Doğum Tarihi",
              onDateSaved: (value) {},
              firstDate: DateTime(1950),
              lastDate: DateTime.now(),
            ),
          ),
          Container(
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Doğum Yeri',
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime =
                    await showTimePicker(context: context, initialTime: time);
                print(selectedTime);
              },
              child: Text("Doğum Saati"),
            ),
          )
        ],
      ),
    );
  }
}
