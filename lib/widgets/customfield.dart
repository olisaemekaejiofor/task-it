import 'package:flutter/material.dart';
import 'package:task_it/helpers/fonts.dart';

Widget customField(
  String head,
  TextEditingController controller,
  String hint,
  TextInputType type,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 40, right: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          head,
          style: nstyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: controller,
          validator: (value) => value.isEmpty ? 'Field can not be empty' : null,
          keyboardType: type,
          autofocus: false,
          decoration: InputDecoration(
              labelText: hint,
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              )),
          style: nstyle,
        ),
      ],
    ),
  );
}
