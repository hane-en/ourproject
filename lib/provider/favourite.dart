
import 'package:events/model/item.dart';
import 'package:flutter/material.dart';


class Favourite with ChangeNotifier {
  List selectedHalls = [];

  add(Item hall) {
    selectedHalls.add(hall);
  }

  delete(Item hall) {
    selectedHalls.remove(hall);
  }
}
