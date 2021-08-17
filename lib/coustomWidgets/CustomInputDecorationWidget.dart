import 'package:flutter/material.dart';

class CoustumInputDecorationWidget extends InputDecoration {
  String _labeltxt = '';
  CoustumInputDecorationWidget(this._labeltxt);
  InputDecoration decoration() {
    return InputDecoration(
        contentPadding: const EdgeInsets.only(left: 8.0, bottom: 1.0, top: 1.0),
         border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  
         labelStyle: TextStyle(
          fontFamily: 'Bell MT',
          fontSize: 15,
          color: const Color(0x992f2e41),
          fontWeight: FontWeight.w700,
        ),
        labelText: _labeltxt);
  }
}
