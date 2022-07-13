import 'package:flutter/material.dart';
import 'package:web_test/model/company_details_model_api.dart';

class CompanyNameWidget extends StatelessWidget {
  final Data name;
  const CompanyNameWidget({Key? key, required this.name})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Text(name.companyName);
  }
}
