// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:io';
// import 'package:intl/intl.dart';

// class AdaptativeDatePicker extends StatelessWidget {

//   final DateTime selectedDate;
//   final Function (DateTime) onDateChanged; //a data mudou 

//   AdaptativeDatePicker({
//     required this.selectedDate,
//     required this.onDateChanged,
//   });
  
//  _showDatePicker(BuildContext context) {
//     showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2019),
//       lastDate: DateTime.now(),
//     ).then((pickedDate) {
//       if (pickedDate == null) {
//         return;
//       }
//     onDateChanged(pickedDate);
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//     return Platform.isIOS ? 
//        Container(
//         height: 180,
//          child: CupertinoDatePicker(
//           mode: CupertinoDatePickerMode.date,
//           initialDateTime: DateTime.now() ,
//           minimumDate: DateTime(2019),
//           maximumDate: DateTime.now(),
//           onDateTimeChanged:onDateChanged ,
//     ),
//        )    
//      :    Container(
//                   height: 70,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           selectedDate == null
//                               ? 'Nenhuma data selecionada!'
//                               : 'Data Selecionada: ${DateFormat('dd/MM/y').format(selectedDate!)}',
//                         ),
//                       ),
//                       TextButton(
//                         child: const Text(
//                           'Selecionar Data',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         onPressed: () => _showDatePicker,
//                       )
//                     ],
//                   ),
//                 ) ;
//   }
// }