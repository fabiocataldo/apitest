import 'package:flutter/material.dart';
import 'package:web_test/model/company_details_model_api.dart';

class CompanyNumberWidget extends StatelessWidget {
  final DataCompanyDetails? data;
  const CompanyNumberWidget({Key? key, this.data})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: '${data?.companyNumber}');

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(15),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelText: "Company Number",
          ),
          controller: myController,
        ),
      ),
    );
  }
}
