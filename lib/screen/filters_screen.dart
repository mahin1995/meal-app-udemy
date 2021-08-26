import 'package:flutter/material.dart';
import '../widgets/main_drwer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';
  // const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("filter screen"),
      ),
      drawer: MainDrwer(),
      body: Container(
        child: Text("filter screen"),
      ),
    );
  }
}
