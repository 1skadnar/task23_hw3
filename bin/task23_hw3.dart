


import 'model/shopping.dart';
import 'network/service.dart';

void main()async{
  String  date =await Network.getData(Network.apiArt);
  print(date);

  List<User> list = artListFromData(date);
  for (var elemant in list) {
    print(elemant);
  }
}