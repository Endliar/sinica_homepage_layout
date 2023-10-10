import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

TextField searchTextField() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: kTextColor,
        ),
        suffixIcon: const Icon(
          Icons.mic,
          color: kTextColor,
        ),
        labelText: "Искать в Синице",
        labelStyle: const TextStyle(color: kTextColor, fontWeight: FontWeight.w400, fontSize: 17),
        filled: true,
        fillColor: kIconColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none)),
  );
}