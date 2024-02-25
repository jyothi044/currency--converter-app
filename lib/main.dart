//first we have to create main func
//material.dart package gives alot of classes,functions,methods.
import 'package:flutter/material.dart';
import 'package:myproject/currency_converter_material.dart';

void main(){
  //we have to run the app
  runApp(const MyApp());

}
//types of widgets
//1.statelesswidget, statefulwidget, inheritedwidget.
//statelesswidget 
//state refers to data how the widget look like in a screen. app will have less states ,once the state is created it cannot be changed
// and state less is immutable.
 
//1.material design made by google
//2. cupertino design made by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    home: CurrencyConverterMaterialPage(),
  );
}
}