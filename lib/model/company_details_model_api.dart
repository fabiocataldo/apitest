// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

DataCompanyDetails companyDetailsModelApi(String str) =>
    DataCompanyDetails.fromMap(json.decode(str));

String dataToJson(DataCompanyDetails data) => json.encode(data.toJson());

class DataCompanyDetails {
  DataCompanyDetails({
    required this.companyStatus,
    required this.companyNumber,
    // required this.accounts,
    required this.registeredOfficeAddress,
    required this.companyName,
  });

  final String companyStatus;
  final String companyNumber;
  // final Accounts accounts;
  final RegisteredOfficeAddress registeredOfficeAddress;
  final String companyName;

  factory DataCompanyDetails.fromMap(Map<String, dynamic> json) =>
      DataCompanyDetails(
        companyStatus: json["company_status"],
        companyNumber: json["company_number"],
        // accounts: Accounts.fromJson(json["accounts"]),
        registeredOfficeAddress:
            RegisteredOfficeAddress.fromJson(json["registered_office_address"]),
        companyName: json["company_name"],
      );

  Map<String, dynamic> toJson() => {
        "company_status": companyStatus,
        "company_number": companyNumber,
        // "accounts": accounts.toJson(),
        "registered_office_address": registeredOfficeAddress.toJson(),
        "company_name": companyName,
      };
}

// class Accounts {
//   Accounts({
//     required this.lastAccounts,
//     required this.nextAccounts,
//   });

//   final LastAccounts lastAccounts;
//   final NextAccounts nextAccounts;

//   factory Accounts.fromJson(Map<String, dynamic> json) => Accounts(
//         lastAccounts: LastAccounts.fromJson(json["last_accounts"]),
//         nextAccounts: NextAccounts.fromJson(json["next_accounts"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "last_accounts": lastAccounts.toJson(),
//         "next_accounts": nextAccounts.toJson(),
//       };
// }

// class LastAccounts {
//   LastAccounts({
//     required this.madeUpTo,
//   });

//   final DateTime madeUpTo;

//   factory LastAccounts.fromJson(Map<String, dynamic> json) => LastAccounts(
//         madeUpTo: DateTime.parse(json["made_up_to"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "made_up_to":
//             "${madeUpTo.year.toString().padLeft(4, '0')}-${madeUpTo.month.toString().padLeft(2, '0')}-${madeUpTo.day.toString().padLeft(2, '0')}",
//       };
// }

// class NextAccounts {
//   NextAccounts({
//     required this.periodEndOn,
//     required this.periodStartOn,
//     required this.dueOn,
//   });

//   final DateTime periodEndOn;
//   final DateTime periodStartOn;
//   final DateTime dueOn;

//   factory NextAccounts.fromJson(Map<String, dynamic> json) => NextAccounts(
//         periodEndOn: DateTime.parse(json["period_end_on"]),
//         periodStartOn: DateTime.parse(json["period_start_on"]),
//         dueOn: DateTime.parse(json["due_on"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "period_end_on":
//             "${periodEndOn.year.toString().padLeft(4, '0')}-${periodEndOn.month.toString().padLeft(2, '0')}-${periodEndOn.day.toString().padLeft(2, '0')}",
//         "period_start_on":
//             "${periodStartOn.year.toString().padLeft(4, '0')}-${periodStartOn.month.toString().padLeft(2, '0')}-${periodStartOn.day.toString().padLeft(2, '0')}",
//         "due_on":
//             "${dueOn.year.toString().padLeft(4, '0')}-${dueOn.month.toString().padLeft(2, '0')}-${dueOn.day.toString().padLeft(2, '0')}",
//       };
// }

class RegisteredOfficeAddress {
  RegisteredOfficeAddress({
    required this.postalCode,
    required this.locality,
    required this.addressLine1,
  });

  final String postalCode;
  final String locality;
  final String addressLine1;

  factory RegisteredOfficeAddress.fromJson(Map<String, dynamic> json) =>
      RegisteredOfficeAddress(
        postalCode: json["postal_code"],
        locality: json["locality"],
        addressLine1: json["address_line_1"],
      );

  Map<String, dynamic> toJson() => {
        "postal_code": postalCode,
        "locality": locality,
        "address_line_1": addressLine1,
      };
}
