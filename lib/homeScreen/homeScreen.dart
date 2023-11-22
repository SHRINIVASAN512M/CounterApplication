import 'package:counterapp/homeScreen/homeScreenVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenVM _instance = HomeScreenVM();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ConterApp",
          style: TextStyle(
            fontSize: 14.4,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        bottomOpacity: 2.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Observer(builder: (_) {
            return CircleAvatar(
              backgroundColor: const Color(0x01a3a4),
              child: Text(_instance.counter.toString()),
            );
          }),
          const SizedBox(
            height: 145,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: (){
                _instance.decreament();
              }, child: const Icon(Icons.remove_circle)),
              const SizedBox(
                width: 90,
              ),
              ElevatedButton(onPressed: (){
                _instance.increment();
              }, child: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
