import 'package:flutter/cupertino.dart';

@immutable
sealed class BookEvent {}

class BookFetchData extends BookEvent {
  final String str;

  BookFetchData(this.str);
}

class EBookFetchData extends BookEvent {
  final String? str;

  EBookFetchData(this.str);
}

