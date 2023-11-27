import 'dart:convert';

List<User>artListFromData(String data)
=>List<User>.from(jsonDecode(data).map((e)
=>User.fromJson(e)));
String artToData(User art) => jsonEncode(art.toJson());
class User{
  late String productName;
  late int cost;
  late int category ;
  late List<String> details;
  late List<String> type ;


  User.fromJson( Map<String ,dynamic >json){
    productName = json['productName'];
    cost = json['cost'];
    category = json['category'];
    details = List<String>.from(json['details'].map((e)=>e.toString()));
    type = List<String>.from(json['type'].map((e)=>e.toString()));

  }
  Map<String , dynamic>toJson(){
    Map<String,dynamic>map={
      "productName" : productName,
      "cost" : cost,
      "category" : category,
      "details" : details,
      "type" : type,

    };
    return map;
  }
  @override
  String toString() {
    return "\n productName :$productName \n cost : $cost \n category : $category \n details : $details \n Type : $type ";
  }

}