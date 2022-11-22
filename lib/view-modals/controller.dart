
import 'package:flutter_weight_tracker/models/record.dart';
import 'package:get/get.dart';

class Controller extends GetxController{

  
  var records = <Record>[

  // Record(weight: 80, dateTime: DateTime.now(), note: 'AAA'),
  // Record(weight: 81, dateTime: DateTime.now(), note: 'BBB'),
  // Record(weight: 82, dateTime: DateTime.now(), note: 'CCC'),
  // Record(weight: 83, dateTime: DateTime.now(), note: 'DDD'),



  ].obs;


  void addRecord(){

    records.add(Record(weight: 80, dateTime: DateTime.now(), note: 'xxxx'),);
    print(records.length);
  }
  
  void deleteRecord(Record record){

    records.remove(record);
  }

}