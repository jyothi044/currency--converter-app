// ignore_for_file: avoid_print
//1.create a variable that stores the converted currency value
//2.create a function that multiplies the value give by the textfiled
//3. store the value in the varaiable that we created
//4.display the variable

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
    const CurrencyConverterMaterialPage({super.key});
  
  @override
  State<CurrencyConverterMaterialPage> createState() => 
 _CurrencyConverterMaterialPageState();
  }

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
 double result =0;
  final TextEditingController textEditingController =TextEditingController();

@override
void initState(){
  super.initState();
  print('rebuilt');
}
  @override
  Widget build(BuildContext context){
    print('rebuilt');
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            'INR ${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}', 
          style: const TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,

              style:const TextStyle(
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                hintText: "please enter the amount in USD",
                hintStyle:TextStyle(color: Colors.black,
                ),
                prefixIcon: Icon(Icons.monetization_on_outlined,),
                prefixIconColor: Colors.black,
                filled:true,
                fillColor: Colors.white,
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    width:2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40),
                  ),
                  ),
                  enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    width:2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40),
                  ),
                  ),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
            ),
          ),
          //button
          //raised
          //appears like a text
          //ex of text button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) *81;
                });
            
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                fixedSize: MaterialStatePropertyAll(Size(410,50)),
              ),
              child: const Text('Convert'),
              ),
        ),
  

        ],
      ),
      ),
    );
  }
}