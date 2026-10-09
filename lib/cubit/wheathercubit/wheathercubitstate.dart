import 'package:wheather_app2/model/Wheathermodel.dart';

class Wheathercubitstate {}

class InitialState extends Wheathercubitstate {}

class wheather_success extends Wheathercubitstate {
  Wheathermodel wheathermodel;
  wheather_success({required this.wheathermodel});
}

class wheather_loading extends Wheathercubitstate {}

class wheather_failure extends Wheathercubitstate {
  String errormessage;
  wheather_failure(this.errormessage);
}
