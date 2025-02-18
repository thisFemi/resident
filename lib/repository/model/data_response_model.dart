import 'package:resident/utils/enums.dart';

class DataItem {
  String title;
  String? network;

  double amount;
  String code;

  DataItem(
      {required this.title,
      this.network,
      required this.amount,
      required this.code});

  factory DataItem.fromJson(dynamic json) {
    return DataItem(
        title: json['Name'],
        amount: double.parse(
            (double.parse(json['Amount']) * 0.01).toStringAsFixed(2)),
        code: json['PaymentCode']);
  }
}

class PaymentDetails {
  String customerId;
  String? serviceId;
  String? serviceName;
  String? customerMobile;
  String? customerEmail;
  String? ref;
  int? surcharge;
  double amount;
  String? paymentCode;
  String? payerName;
  TransactionType transactionType;
  PaymentGateway? paymentGateway;

  PaymentDetails(
      {required this.customerId,
      required this.customerEmail,
      required this.amount,
      required this.customerMobile,
      required this.payerName,
      required this.surcharge,
      this.ref,
      required this.serviceName,
      required this.serviceId,
      required this.paymentCode,
      this.paymentGateway,
      required this.transactionType});

  // factory PaymentDetails.fromJson(dynamic json) {
  //   return PaymentDetails(
  //       amount: json['amount'],
  //       customerEmail: json['CustomerEmail'],
  //       customerId: json['CustomerId'],
  //       customerMobile: json['CsutomerMobile'],
  //       payerName: json['PayerName'],
  //       paymentCode: json['PaymentCode'],
  //       paymentGateway: json['Payment_gateway'],
  //       transactionType: json['transation_type']);
  // }
}

class OrderItem {
  String customerId;
  double amount;
  String code;
  String? customerName;
  int? surcharge;
  OrderItem(
      {required this.customerId,
      required this.customerName,
      required this.amount,
      this.surcharge,
      required this.code});

  factory OrderItem.fromJson(dynamic json) {
    return OrderItem(
        customerName: json["FullName"],
        customerId: json["CustomerId"],
        amount: double.parse(json['Amount']) * 0.01,
        surcharge: json["Surcharge"],
        code: json['PaymentCode']);
  }
}
