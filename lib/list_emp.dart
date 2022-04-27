import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class ListEmp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListEmp();
  }
}

class _ListEmp extends State<ListEmp> {
  @override
  void initState() {
    super.initState();
    readJson();
  }

  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/emp.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["emp"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'List of Employees',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Display the data loaded from sample.json
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Image.network("${_items[index]["profile"]}"),
                      title: Text(_items[index]["name"]),
                      subtitle: Text(_items[index]["designation"]),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
