import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/office_details_model.dart';

Future<DataOfficeDetails?> fetchOfficeDetails(query) async {
  String apiKey = "a5e135b6-d5d3-442e-b26e-51b7e96c7384";
  String password = "";
  String url =
      "https://api.company-information.service.gov.uk/company/$query/officers";
  String basicAuth = 'Basic ${base64.encode(utf8.encode('$apiKey:$password'))}';

  Map<String, String> headers = {'Authorization': basicAuth};

  final officeDetailsResponse = await http.get(
    Uri.parse(url),
    headers: headers,
  );

  if (officeDetailsResponse.statusCode == 200) {
    var jsonOfficeDetailsResponse = json.decode(officeDetailsResponse.body);

    return DataOfficeDetails.fromMap(jsonOfficeDetailsResponse);
  }
  return null;
}
