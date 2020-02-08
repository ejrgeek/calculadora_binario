import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  TextEditingController _firstValue = TextEditingController();
  TextEditingController _secondValue = TextEditingController();
  var _result = "Resultado";
  List<bool> _selected = List.generate(5, (_) => false);

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

            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text(
                    _result,
                    style: TextStyle(fontSize: 30),
                  ),
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
                    controller: _firstValue,
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
              onPressed: (index){},
              isSelected: _selected,
            )

          ],
        ),
      ),
    );
  }
}