import 'package:flutter/material.dart';
import 'package:web_test/model/company_details_model_api.dart';

class CompanyAddressWidget extends StatelessWidget {
  final DataCompanyDetails? data;
  const CompanyAddressWidget({Key? key, this.data})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(
        text:
            '${data?.registeredOfficeAddress.addressLine1}, ${data?.registeredOfficeAddress.locality}, ${data?.registeredOfficeAddress.postalCode}');

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
            labelText: "Company Address",
          ),
          controller: myController,
        ),
      ),
    );
  }
}
