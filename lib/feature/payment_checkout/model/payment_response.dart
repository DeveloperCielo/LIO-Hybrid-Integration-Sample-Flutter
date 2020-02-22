import 'dart:convert';
import 'order.dart';

class PaymentCheckoutResponse {
    int code;
    Order order;
    String reason;

    PaymentCheckoutResponse({
        this.code,
        this.order,
        this.reason,
    });

    factory PaymentCheckoutResponse.fromJson(String str) => PaymentCheckoutResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PaymentCheckoutResponse.fromMap(Map<String, dynamic> json) => PaymentCheckoutResponse(
        code: json["code"] == null ? null : json["code"],
        order: Order.fromMap(json["order"]),
        reason: json["reason"] == null ? null : json["reason"],
    );

    Map<String, dynamic> toMap() => {
        "code": code == null ? null : code,
         "order": order.toMap(),
        "reason": reason == null ? null : reason,
    };
}