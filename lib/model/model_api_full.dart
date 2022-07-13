// import 'dart:convert';

// Data dataFromJson(String str) => Data.fromJson(json.decode(str));

// String dataToJson(Data data) => json.encode(data.toJson());

// class Data {
//   Data({
//     required this.accounts,
//     required this.annualReturn,
//     required this.branchCompanyDetails,
//     required this.canFile,
//     required this.companyName,
//     required this.companyNumber,
//     required this.companyStatus,
//     required this.companyStatusDetail,
//     required this.confirmationStatement,
//     required this.dateOfCessation,
//     required this.dateOfCreation,
//     required this.etag,
//     required this.foreignCompanyDetails,
//     required this.hasBeenLiquidated,
//     required this.hasCharges,
//     required this.hasInsolvencyHistory,
//     required this.isCommunityInterestCompany,
//     required this.jurisdiction,
//     required this.lastFullMembersListDate,
//     required this.links,
//     required this.previousCompanyNames,
//     required this.registeredOfficeAddress,
//     required this.registeredOfficeIsInDispute,
//     required this.serviceAddress,
//     required this.sicCodes,
//     required this.type,
//     required this.undeliverableRegisteredOfficeAddress,
//   });

//   final DataAccounts accounts;
//   final AnnualReturn annualReturn;
//   final BranchCompanyDetails branchCompanyDetails;
//   final String canFile;
//   final String companyName;
//   final String companyNumber;
//   final String companyStatus;
//   final String companyStatusDetail;
//   final AnnualReturn confirmationStatement;
//   final String dateOfCessation;
//   final String dateOfCreation;
//   final String etag;
//   final ForeignCompanyDetails foreignCompanyDetails;
//   final String hasBeenLiquidated;
//   final String hasCharges;
//   final String hasInsolvencyHistory;
//   final String isCommunityInterestCompany;
//   final String jurisdiction;
//   final String lastFullMembersListDate;
//   final Links links;
//   final List<PreviousCompanyName> previousCompanyNames;
//   final IceAddress registeredOfficeAddress;
//   final String registeredOfficeIsInDispute;
//   final IceAddress serviceAddress;
//   final List<String> sicCodes;
//   final String type;
//   final String undeliverableRegisteredOfficeAddress;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         accounts: DataAccounts.fromJson(json["accounts"]),
//         annualReturn: AnnualReturn.fromJson(json["annual_return"]),
//         branchCompanyDetails:
//             BranchCompanyDetails.fromJson(json["branch_company_details"]),
//         canFile: json["can_file"],
//         companyName: json["company_name"],
//         companyNumber: json["company_number"],
//         companyStatus: json["company_status"],
//         companyStatusDetail: json["company_status_detail"],
//         confirmationStatement:
//             AnnualReturn.fromJson(json["confirmation_statement"]),
//         dateOfCessation: json["date_of_cessation"],
//         dateOfCreation: json["date_of_creation"],
//         etag: json["etag"],
//         foreignCompanyDetails:
//             ForeignCompanyDetails.fromJson(json["foreign_company_details"]),
//         hasBeenLiquidated: json["has_been_liquidated"],
//         hasCharges: json["has_charges"],
//         hasInsolvencyHistory: json["has_insolvency_history"],
//         isCommunityInterestCompany: json["is_community_interest_company"],
//         jurisdiction: json["jurisdiction"],
//         lastFullMembersListDate: json["last_full_members_list_date"],
//         links: Links.fromJson(json["links"]),
//         previousCompanyNames: List<PreviousCompanyName>.from(
//             json["previous_company_names"]
//                 .map((x) => PreviousCompanyName.fromJson(x))),
//         registeredOfficeAddress:
//             IceAddress.fromJson(json["registered_office_address"]),
//         registeredOfficeIsInDispute: json["registered_office_is_in_dispute"],
//         serviceAddress: IceAddress.fromJson(json["service_address"]),
//         sicCodes: List<String>.from(json["sic_codes"].map((x) => x)),
//         type: json["type"],
//         undeliverableRegisteredOfficeAddress:
//             json["undeliverable_registered_office_address"],
//       );

//   Map<String, dynamic> toJson() => {
//         "accounts": accounts.toJson(),
//         "annual_return": annualReturn.toJson(),
//         "branch_company_details": branchCompanyDetails.toJson(),
//         "can_file": canFile,
//         "company_name": companyName,
//         "company_number": companyNumber,
//         "company_status": companyStatus,
//         "company_status_detail": companyStatusDetail,
//         "confirmation_statement": confirmationStatement.toJson(),
//         "date_of_cessation": dateOfCessation,
//         "date_of_creation": dateOfCreation,
//         "etag": etag,
//         "foreign_company_details": foreignCompanyDetails.toJson(),
//         "has_been_liquidated": hasBeenLiquidated,
//         "has_charges": hasCharges,
//         "has_insolvency_history": hasInsolvencyHistory,
//         "is_community_interest_company": isCommunityInterestCompany,
//         "jurisdiction": jurisdiction,
//         "last_full_members_list_date": lastFullMembersListDate,
//         "links": links.toJson(),
//         "previous_company_names":
//             List<dynamic>.from(previousCompanyNames.map((x) => x.toJson())),
//         "registered_office_address": registeredOfficeAddress.toJson(),
//         "registered_office_is_in_dispute": registeredOfficeIsInDispute,
//         "service_address": serviceAddress.toJson(),
//         "sic_codes": List<dynamic>.from(sicCodes.map((x) => x)),
//         "type": type,
//         "undeliverable_registered_office_address":
//             undeliverableRegisteredOfficeAddress,
//       };
// }

// class DataAccounts {
//   DataAccounts({
//     required this.accountingReferenceDate,
//     required this.lastAccounts,
//     required this.nextDue,
//     required this.nextMadeUpTo,
//     required this.overdue,
//   });

//   final Account accountingReferenceDate;
//   final LastAccounts lastAccounts;
//   final String nextDue;
//   final String nextMadeUpTo;
//   final String overdue;

//   factory DataAccounts.fromJson(Map<String, dynamic> json) => DataAccounts(
//         accountingReferenceDate:
//             Account.fromJson(json["accounting_reference_date"]),
//         lastAccounts: LastAccounts.fromJson(json["last_accounts"]),
//         nextDue: json["next_due"],
//         nextMadeUpTo: json["next_made_up_to"],
//         overdue: json["overdue"],
//       );

//   Map<String, dynamic> toJson() => {
//         "accounting_reference_date": accountingReferenceDate.toJson(),
//         "last_accounts": lastAccounts.toJson(),
//         "next_due": nextDue,
//         "next_made_up_to": nextMadeUpTo,
//         "overdue": overdue,
//       };
// }

// class Account {
//   Account({
//     required this.day,
//     required this.month,
//   });

//   final String day;
//   final String month;

//   factory Account.fromJson(Map<String, dynamic> json) => Account(
//         day: json["day"],
//         month: json["month"],
//       );

//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "month": month,
//       };
// }

// class LastAccounts {
//   LastAccounts({
//     required this.madeUpTo,
//     required this.type,
//   });

//   final String madeUpTo;
//   final Type type;

//   factory LastAccounts.fromJson(Map<String, dynamic> json) => LastAccounts(
//         madeUpTo: json["made_up_to"],
//         type: Type.fromJson(json["type"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "made_up_to": madeUpTo,
//         "type": type.toJson(),
//       };
// }

// class Type {
//   Type();

//   factory Type.fromJson(Map<String, dynamic> json) => Type();

//   Map<String, dynamic> toJson() => {};
// }

// class AnnualReturn {
//   AnnualReturn({
//     required this.lastMadeUpTo,
//     required this.nextDue,
//     required this.nextMadeUpTo,
//     required this.overdue,
//   });

//   final String lastMadeUpTo;
//   final String nextDue;
//   final String nextMadeUpTo;
//   final String overdue;

//   factory AnnualReturn.fromJson(Map<String, dynamic> json) => AnnualReturn(
//         lastMadeUpTo: json["last_made_up_to"],
//         nextDue: json["next_due"],
//         nextMadeUpTo: json["next_made_up_to"],
//         overdue: json["overdue"],
//       );

//   Map<String, dynamic> toJson() => {
//         "last_made_up_to": lastMadeUpTo,
//         "next_due": nextDue,
//         "next_made_up_to": nextMadeUpTo,
//         "overdue": overdue,
//       };
// }

// class BranchCompanyDetails {
//   BranchCompanyDetails({
//     required this.businessActivity,
//     required this.parentCompanyName,
//     required this.parentCompanyNumber,
//   });

//   final String businessActivity;
//   final String parentCompanyName;
//   final String parentCompanyNumber;

//   factory BranchCompanyDetails.fromJson(Map<String, dynamic> json) =>
//       BranchCompanyDetails(
//         businessActivity: json["business_activity"],
//         parentCompanyName: json["parent_company_name"],
//         parentCompanyNumber: json["parent_company_number"],
//       );

//   Map<String, dynamic> toJson() => {
//         "business_activity": businessActivity,
//         "parent_company_name": parentCompanyName,
//         "parent_company_number": parentCompanyNumber,
//       };
// }

// class ForeignCompanyDetails {
//   ForeignCompanyDetails({
//     required this.accountingRequirement,
//     required this.accounts,
//     required this.businessActivity,
//     required this.companyType,
//     required this.governedBy,
//     required this.isACreditFinanceInstitution,
//     required this.originatingRegistry,
//     required this.registrationNumber,
//   });

//   final AccountingRequirement accountingRequirement;
//   final ForeignCompanyDetailsAccounts accounts;
//   final String businessActivity;
//   final String companyType;
//   final String governedBy;
//   final String isACreditFinanceInstitution;
//   final OriginatingRegistry originatingRegistry;
//   final String registrationNumber;

//   factory ForeignCompanyDetails.fromJson(Map<String, dynamic> json) =>
//       ForeignCompanyDetails(
//         accountingRequirement:
//             AccountingRequirement.fromJson(json["accounting_requirement"]),
//         accounts: ForeignCompanyDetailsAccounts.fromJson(json["accounts"]),
//         businessActivity: json["business_activity"],
//         companyType: json["company_type"],
//         governedBy: json["governed_by"],
//         isACreditFinanceInstitution: json["is_a_credit_finance_institution"],
//         originatingRegistry:
//             OriginatingRegistry.fromJson(json["originating_registry"]),
//         registrationNumber: json["registration_number"],
//       );

//   Map<String, dynamic> toJson() => {
//         "accounting_requirement": accountingRequirement.toJson(),
//         "accounts": accounts.toJson(),
//         "business_activity": businessActivity,
//         "company_type": companyType,
//         "governed_by": governedBy,
//         "is_a_credit_finance_institution": isACreditFinanceInstitution,
//         "originating_registry": originatingRegistry.toJson(),
//         "registration_number": registrationNumber,
//       };
// }

// class AccountingRequirement {
//   AccountingRequirement({
//     required this.foreignAccountType,
//     required this.termsOfAccountPublication,
//   });

//   final String foreignAccountType;
//   final String termsOfAccountPublication;

//   factory AccountingRequirement.fromJson(Map<String, dynamic> json) =>
//       AccountingRequirement(
//         foreignAccountType: json["foreign_account_type"],
//         termsOfAccountPublication: json["terms_of_account_publication"],
//       );

//   Map<String, dynamic> toJson() => {
//         "foreign_account_type": foreignAccountType,
//         "terms_of_account_publication": termsOfAccountPublication,
//       };
// }

// class ForeignCompanyDetailsAccounts {
//   ForeignCompanyDetailsAccounts({
//     required this.accountPeriodFrom,
//     required this.accountPeriodTo,
//     required this.mustFileWithin,
//   });

//   final Account accountPeriodFrom;
//   final Account accountPeriodTo;
//   final MustFileWithin mustFileWithin;

//   factory ForeignCompanyDetailsAccounts.fromJson(Map<String, dynamic> json) =>
//       ForeignCompanyDetailsAccounts(
//         accountPeriodFrom: Account.fromJson(json["account_period_from:"]),
//         accountPeriodTo: Account.fromJson(json["account_period_to"]),
//         mustFileWithin: MustFileWithin.fromJson(json["must_file_within"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "account_period_from:": accountPeriodFrom.toJson(),
//         "account_period_to": accountPeriodTo.toJson(),
//         "must_file_within": mustFileWithin.toJson(),
//       };
// }

// class MustFileWithin {
//   MustFileWithin({
//     required this.months,
//   });

//   final String months;

//   factory MustFileWithin.fromJson(Map<String, dynamic> json) => MustFileWithin(
//         months: json["months"],
//       );

//   Map<String, dynamic> toJson() => {
//         "months": months,
//       };
// }

// class OriginatingRegistry {
//   OriginatingRegistry({
//     required this.country,
//     required this.name,
//   });

//   final String country;
//   final String name;

//   factory OriginatingRegistry.fromJson(Map<String, dynamic> json) =>
//       OriginatingRegistry(
//         country: json["country"],
//         name: json["name"],
//       );

//   Map<String, dynamic> toJson() => {
//         "country": country,
//         "name": name,
//       };
// }

// class Links {
//   Links({
//     required this.personsWithSignificantControl,
//     required this.personsWithSignificantControlStatements,
//     required this.registers,
//     required this.self,
//   });

//   final String personsWithSignificantControl;
//   final String personsWithSignificantControlStatements;
//   final String registers;
//   final String self;

//   factory Links.fromJson(Map<String, dynamic> json) => Links(
//         personsWithSignificantControl: json["persons_with_significant_control"],
//         personsWithSignificantControlStatements:
//             json["persons_with_significant_control_statements"],
//         registers: json["registers"],
//         self: json["self"],
//       );

//   Map<String, dynamic> toJson() => {
//         "persons_with_significant_control": personsWithSignificantControl,
//         "persons_with_significant_control_statements":
//             personsWithSignificantControlStatements,
//         "registers": registers,
//         "self": self,
//       };
// }

// class PreviousCompanyName {
//   PreviousCompanyName({
//     required this.ceasedOn,
//     required this.effectiveFrom,
//     required this.name,
//   });

//   final String ceasedOn;
//   final String effectiveFrom;
//   final String name;

//   factory PreviousCompanyName.fromJson(Map<String, dynamic> json) =>
//       PreviousCompanyName(
//         ceasedOn: json["ceased_on"],
//         effectiveFrom: json["effective_from"],
//         name: json["name"],
//       );

//   Map<String, dynamic> toJson() => {
//         "ceased_on": ceasedOn,
//         "effective_from": effectiveFrom,
//         "name": name,
//       };
// }

// class IceAddress {
//   IceAddress({
//     required this.addressLine1,
//     required this.addressLine2,
//     required this.careOf,
//     required this.country,
//     required this.locality,
//     required this.poBox,
//     required this.postalCode,
//     required this.premises,
//     required this.region,
//   });

//   final String addressLine1;
//   final String addressLine2;
//   final String careOf;
//   final String country;
//   final String locality;
//   final String poBox;
//   final String postalCode;
//   final String premises;
//   final String region;

//   factory IceAddress.fromJson(Map<String, dynamic> json) => IceAddress(
//         addressLine1: json["address_line_1"],
//         addressLine2: json["address_line_2"],
//         careOf: json["care_of"],
//         country: json["country"],
//         locality: json["locality"],
//         poBox: json["po_box"],
//         postalCode: json["postal_code"],
//         premises: json["premises"] == null ? null : json["premises"],
//         region: json["region"],
//       );

//   Map<String, dynamic> toJson() => {
//         "address_line_1": addressLine1,
//         "address_line_2": addressLine2,
//         "care_of": careOf,
//         "country": country,
//         "locality": locality,
//         "po_box": poBox,
//         "postal_code": postalCode,
//         "premises": premises == null ? null : premises,
//         "region": region,
//       };
// }
