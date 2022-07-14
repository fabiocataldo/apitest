import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web_test/model/company_details_model_api.dart';

Future<DataCompanyDetails?> fetchCompanyDetails(query) async {
  String apiKey = "a5e135b6-d5d3-442e-b26e-51b7e96c7384";
  String password = "";
  String url = "https://api.company-information.service.gov.uk/company/$query";
  String basicAuth = 'Basic ${base64.encode(utf8.encode('$apiKey:$password'))}';

  Map<String, String> headers = {'Authorization': basicAuth};

  final companyDetailsResponse = await http.get(
    Uri.parse(url),
    headers: headers,
  );

  if (companyDetailsResponse.statusCode == 200) {
    var jsonCompanyDetailsResponse = json.decode(companyDetailsResponse.body);

    return DataCompanyDetails.fromMap(jsonCompanyDetailsResponse);
  }
  return null;
}
