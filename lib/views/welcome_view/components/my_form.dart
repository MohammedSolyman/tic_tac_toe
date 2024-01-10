import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({required this.tec, required this.label, super.key});

  final TextEditingController tec;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: tec,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
          fillColor: Theme.of(context).primaryColorLight,
          filled: true,
          labelText: label,
          // labelStyle: TextStyle(color: Theme.of(context).primaryColorDark),
          labelStyle: Theme.of(context).textTheme.displaySmall,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2, color: Theme.of(context).primaryColorDark)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 6, color: Theme.of(context).primaryColorDark))),
    );
  }
}
