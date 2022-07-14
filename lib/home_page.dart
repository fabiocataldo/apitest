import 'package:flutter/material.dart';
import 'package:web_test/network/fetch_company_details.dart';
import 'package:web_test/widgets/company_details_data/company_address_widget.dart';
import 'package:web_test/widgets/company_details_data/company_name_widget.dart';
import 'package:web_test/widgets/company_details_data/company_number_widget.dart';
import 'package:web_test/widgets/searching_bar/company_search_widget.dart';
import 'package:web_test/widgets/company_details_data/office_name_widget.dart';
import 'package:web_test/widgets/company_details_data/office_role_widget.dart';
import 'model/company_details_model_api.dart';
import 'model/office_details_model.dart';
import 'network/fetch_officer_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();

  DataCompanyDetails? data;
  DataOfficeDetails? data2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client DataBase'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SearchCompanyTextFieldWidget(
            hintText: 'Search Company by Number',
            textInputType: TextInputType.text,
            textController: myController,
            onPressed: () async {
              data = await fetchCompanyDetails(myController.text);
              data2 = await fetchOfficeDetails(myController.text);

              setState(() {});
            },
          ),
          CompanyNameWidget(data: data),
          CompanyNumberWidget(data: data),
          CompanyAddressWidget(data: data),

          // TO BE IMPLEMENTED
          // CompanyNextAccountWidget(data: data),
          // CompanyLastAccountWidget(data: data),

          OfficerNameWidget(data: data2),
          OfficeRoleWidget(data: data2),

          ElevatedButton(
            onPressed: () {},
            child: Text('Next'),
          )
        ]),
      ),
    );
  }
}
