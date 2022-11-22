import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/models/record.dart';
import 'package:flutter_weight_tracker/view-modals/controller.dart';
import 'package:flutter_weight_tracker/widgets/record_list_tile.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {

    List<Record> records= _controller.records;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("History "),
          actions: [
            IconButton(onPressed: _controller.addRecord, icon: const Icon(Icons.add))
          ],
        ),
        body: records.isEmpty
            ? Center(
                child: Container(child: const Text("Please Add Some Records")),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: records
                    .map((record) => RecordListTile(record: record))
                    .toList(),
              ),
      ),
    );
  }
}
