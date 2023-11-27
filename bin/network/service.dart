import 'package:http/http.dart';

class Network{
  static final String baseUrl = "655deeb89f1e1093c59a2ed1.mockapi.io";
  static final String apiArt = "/shopping ";

  static Future<String > getData (String api )async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    if(response.statusCode == 200  || response.statusCode == 201){
      return response.body;
    }else{
      return "what the hack ${response.statusCode}";
    }
  }
}
