import 'package:calculadora_binario/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class Home extends StatelessWidget {

  TextEditingController _firstValue = TextEditingController();
  TextEditingController _secondValue = TextEditingController();

  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calduladora Binário"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Observer(
              builder: (_) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text('${controller.result.value}', style: TextStyle(fontSize: 40, color: Colors.blue),),
                  );
              }
            ),
            
            Padding(
              padding: EdgeInsets.all(32),
              child: Column(

                children: <Widget>[

                  TextField(
                    controller: _firstValue,
                    decoration: InputDecoration(
                      labelText: "Primeiro Valor"
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  TextField(
                    controller: _secondValue,
                    decoration: InputDecoration(
                      labelText: "Segundo Valor"
                    ),
                    keyboardType: TextInputType.number,
                  ),

                ],

              )
            ),

            ToggleButtons(
              borderRadius: BorderRadius.circular(10),
              selectedColor: Colors.white,
              fillColor: Colors.blue,
              color: Colors.blue,
              children: <Widget>[
                Text("+", style: TextStyle(fontSize: 25),),
                Text("-", style: TextStyle(fontSize: 25),),
                Text("*", style: TextStyle(fontSize: 25),),
                Text("/", style: TextStyle(fontSize: 25),),
                Text("%", style: TextStyle(fontSize: 25),),
              ],
              onPressed: (index){
                controller.getData(index, _firstValue.text, _secondValue.text);
                controller.resultCalc();
              },
              isSelected: controller.list(),
            )

          ],
        ),
      ),
    );
  }
}