import 'package:http/http.dart' as http;


Future<String> connect(String text) async {
  var resBody =  await http
      .get(Uri.parse('https://api.agify.io/?name=meelad'))
  .then((response) {
   return response.body;
  });
  return resBody;
}