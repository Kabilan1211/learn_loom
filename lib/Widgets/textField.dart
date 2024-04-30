// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.secureText,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool secureText;
  final String? Function(String?) validator;

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade200),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.indigo),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.black),
          fillColor: Colors.grey.shade200,
          filled: true,
          constraints: const BoxConstraints.expand(width: 500, height: 100)
        ),
        validator: (val){
          setState(() {
            val = widget.controller.text;
          });
          return widget.validator(val);
        },
        obscureText: widget.secureText,
      ),
    );
  }
}
