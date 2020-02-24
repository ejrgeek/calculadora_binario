import 'package:mobx/mobx.dart';
import 'package:calculadora_binario/binary_methods/binary_calc.dart' as binary_calc;

class Controller {

  var result = Observable("Resultado");
  var _binaryValue;
  var _buttonIndex;
  var _firstValue;
  var _secondValue;

  List<bool> _selected = List.generate(5, (_) => false);

  Action resultCalc;

  Controller(){
    resultCalc = Action(_setResult);
  }

  _setResult(){
    _binaryValue = binary_calc.calcBin(_buttonIndex, _firstValue, _secondValue);
    result.value = _binaryValue;
  }

  getData(int index, String firstValue, String secondValue){
    _buttonIndex = index;
    _firstValue = firstValue;
    _secondValue = secondValue;
  }

  List<bool> list(){
    return _selected;
  }

}