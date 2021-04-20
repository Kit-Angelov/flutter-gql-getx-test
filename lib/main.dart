import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/gql/gql_provider.dart';
import 'package:flutter_application_1/controllers/main.dart';

void main() async {
  runApp(GetMaterialApp(home: Home()));
}

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {

    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
      body: Center(child: ElevatedButton(
              child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: (){GQLProvider().getAll();}));
  }
}

class Other extends StatelessWidget {
  final Controller c = Get.find();

  @override
  Widget build(context){
     return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
