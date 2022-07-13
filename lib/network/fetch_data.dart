import 'dart:convert';
import 'package:http/http.dart' as http;

Future fetchData(query) async {
  String apiKey = "a5e135b6-d5d3-442e-b26e-51b7e96c7384";
  String password = "";
  String url = "https://api.company-information.service.gov.uk/company/$query";
  String basicAuth = 'Basic ${base64.encode(utf8.encode('$apiKey:$password'))}';

  Map<String, String> headers = {'Authorization': basicAuth};

  final response = await http.get(
    Uri.parse(url),
    headers: headers,
  );

  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    var name = jsonResponse["company_name"] as String;
    print(name);

    print(response.statusCode);
    print(url);

    return;
  } else {}
}
