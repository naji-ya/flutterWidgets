import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    home: DatepickerEx(),
  ));


}

class DatepickerEx extends StatefulWidget {
  const DatepickerEx({super.key});

  @override
  State<DatepickerEx> createState() => _DatepickerExState();
}

class _DatepickerExState extends State<DatepickerEx> {

  DateTime selectdate =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: TextEditingController(

            text: "${selectdate.toLocal()}".split("")[0],
          ),
          readOnly: true,
          onTap: ()=> selectedDate(context),
          decoration: InputDecoration(

            hintText: "Select Date",
            suffixIcon: Icon(Icons.calendar_month)
          ),
        ),
      ),
    );
  }

 Future<void> selectedDate(BuildContext context)async {
    final DateTime ? picktime=await showDatePicker(context: context,
        initialDate: DateTime(2022), firstDate: DateTime(2018), lastDate: DateTime(2030));
    if(picktime!=null && picktime!=selectdate){
      setState(() {
        selectdate=picktime;
      });
    }

 }
}
