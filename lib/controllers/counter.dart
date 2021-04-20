import 'package:get/get.dart';
import 'package:flutter_application_1/models/counter.dart';

class Counter extends GetxController{
  var person = Person(name: "nsdf");
  var count = 0.obs;
  increment() => count++;
}