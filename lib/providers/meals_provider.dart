import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/data/dummy_dart.dart';

final mealsProvider = Provider((ref){
  // ignore: prefer_typing_uninitialized_variables
  var dummyMeals;
  return dummyMeals;
});