import 'package:flutter/cupertino.dart';


class TypeConversion {

  int num;
  // 数値型を文字列型に変換する
  TypeConversion(this.num);

  String conversion() {
    String value = num.toString();
    return value;
  }

}