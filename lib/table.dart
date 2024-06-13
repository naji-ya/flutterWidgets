import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tableDart(),
  ));
}

class tableDart extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: Center(
        child: DataTable(
            border: TableBorder.all(
              width: 2
            ),
            columns: [
          
          DataColumn(label: Text("Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("Age",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("Salary",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))

        ], rows: [

          DataRow(cells: [
            DataCell(Text("Anu")),
            DataCell(Text("30")),
            DataCell(Text("20000")),
          ]),

          DataRow(cells: [
            DataCell(Text("Banu")),
            DataCell(Text("29")),
            DataCell(Text("30000")),
          ]),

          DataRow(cells: [
            DataCell(Text("Khan")),
            DataCell(Text("34")),
            DataCell(Text("27000")),
          ]),
        ]),
      ),
    );
  }
}
