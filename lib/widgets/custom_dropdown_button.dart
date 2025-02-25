import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        width: width,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(38, 38, 38, 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButton(
            value: values.first,
            onChanged: (_) {},
            items: values.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e),
              );
            }).toList(),
            underline: Container(),
            dropdownColor: Color.fromRGBO(38, 38, 38, 1.0),
            borderRadius: BorderRadius.circular(10),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            )));
  }
}