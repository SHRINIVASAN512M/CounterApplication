import 'package:mobx/mobx.dart';

part 'homeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModel with _$HomeScreenModel;

abstract class _HomeScreenModel with Store {

  @observable
  int counter  = 0;

  void setmethod({required int counter}) => this.counter = counter;
  
}