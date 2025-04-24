import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:matule/layers/presentations/shared/store/root_store.dart';
import 'package:mobx/mobx.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          IconButton(onPressed: (){
            RootStore().testStore.increment();
          }, icon: Icon(CupertinoIcons.trash)),
          Observer(builder: (_) =>Text('${RootStore().testStore.value}',) ),
          
        ],
      ),
      
    );
  }
}