import 'package:counterapp/homeScreen/homeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  
  void increment(){
    counter = counter+1;
  }

void decreament(){
  if(counter>0){
    counter = counter-1;
  }
}
}