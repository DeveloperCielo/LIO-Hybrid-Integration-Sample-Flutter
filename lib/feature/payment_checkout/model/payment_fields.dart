class PaymentFields {
  String cityState;
  String serviceTax;
  String documentType;
  String hasConnectivity;
  String document;
  String entranceMode;
  String paymentTypeCode;
  String hasPassword;
  String changeAmount;
  String productName;
  String hasWarranty;
  String merchantName;
  String hasSentMerchantCode;
  String isOnlyIntegrationCancelable;
  String primaryProductCode;
  String originalTransactionId;
  String requestDate;
  String firstQuotaAmount;
  String secondaryProductCode;
  String pan;
  String applicationName;
  String isFinancialProduct;
  String v40Code;
  String merchantCode;
  String totalizerCode;
  String isDoubleFontPrintAllowed;
  String hasSentReference;
  String isExternalCall;
  String originalTransactionDate;
  String interestAmount;
  String receiptPrintPermission;
  String cardCaptureType;
  String upFrontAmount;
  String hasPrintedClientReceipt;
  String creditAdminTax;
  String primaryProductName;
  String avaiableBalance;
  String merchantAddress;
  String applicationId;
  String numberOfQuotas;
  String boardingTax;
  String paymentTransactionId;
  String firstQuotaDate;
  String hasSignature;
  String secondaryProductName;
  String statusCode;

  PaymentFields({
    this.cityState,
    this.serviceTax,
    this.documentType,
    this.hasConnectivity,
    this.document,
    this.entranceMode,
    this.paymentTypeCode,
    this.hasPassword,
    this.changeAmount,
    this.productName,
    this.hasWarranty,
    this.merchantName,
    this.hasSentMerchantCode,
    this.isOnlyIntegrationCancelable,
    this.primaryProductCode,
    this.originalTransactionId,
    this.requestDate,
    this.firstQuotaAmount,
    this.secondaryProductCode,
    this.pan,
    this.applicationName,
    this.isFinancialProduct,
    this.v40Code,
    this.merchantCode,
    this.totalizerCode,
    this.isDoubleFontPrintAllowed,
    this.hasSentReference,
    this.isExternalCall,
    this.originalTransactionDate,
    this.interestAmount,
    this.receiptPrintPermission,
    this.cardCaptureType,
    this.upFrontAmount,
    this.hasPrintedClientReceipt,
    this.creditAdminTax,
    this.primaryProductName,
    this.avaiableBalance,
    this.merchantAddress,
    this.applicationId,
    this.numberOfQuotas,
    this.boardingTax,
    this.paymentTransactionId,
    this.firstQuotaDate,
    this.hasSignature,
    this.secondaryProductName,
    this.statusCode,
  });

  factory PaymentFields.fromMap(Map<String, dynamic> json) => PaymentFields(
        cityState: json["cityState"],
        serviceTax: json["serviceTax"],
        documentType: json["documentType"],
        hasConnectivity: json["hasConnectivity"],
        document: json["document"],
        entranceMode: json["entranceMode"],
        paymentTypeCode: json["paymentTypeCode"],
        hasPassword: json["hasPassword"],
        changeAmount: json["changeAmount"],
        productName: json["productName"],
        hasWarranty: json["hasWarranty"],
        merchantName: json["merchantName"],
        hasSentMerchantCode: json["hasSentMerchantCode"],
        isOnlyIntegrationCancelable: json["isOnlyIntegrationCancelable"],
        primaryProductCode: json["primaryProductCode"],
        originalTransactionId: json["originalTransactionId"],
        requestDate: json["requestDate"],
        firstQuotaAmount: json["firstQuotaAmount"],
        secondaryProductCode: json["secondaryProductCode"],
        pan: json["pan"],
        applicationName: json["applicationName"],
        isFinancialProduct: json["isFinancialProduct"],
        v40Code: json["v40Code"],
        merchantCode: json["merchantCode"],
        totalizerCode: json["totalizerCode"],
        isDoubleFontPrintAllowed: json["isDoubleFontPrintAllowed"],
        hasSentReference: json["hasSentReference"],
        isExternalCall: json["isExternalCall"],
        originalTransactionDate: json["originalTransactionDate"],
        interestAmount: json["interestAmount"],
        receiptPrintPermission: json["receiptPrintPermission"],
        cardCaptureType: json["cardCaptureType"],
        upFrontAmount: json["upFrontAmount"],
        hasPrintedClientReceipt: json["hasPrintedClientReceipt"],
        creditAdminTax: json["creditAdminTax"],
        primaryProductName: json["primaryProductName"],
        avaiableBalance: json["avaiableBalance"],
        merchantAddress: json["merchantAddress"],
        applicationId: json["applicationId"],
        numberOfQuotas: json["numberOfQuotas"],
        boardingTax: json["boardingTax"],
        paymentTransactionId: json["paymentTransactionId"],
        firstQuotaDate: json["firstQuotaDate"],
        hasSignature: json["hasSignature"],
        secondaryProductName: json["secondaryProductName"],
        statusCode: json["statusCode"],
      );

  Map<String, dynamic> toMap() => {
        "cityState": cityState,
        "serviceTax": serviceTax,
        "documentType": documentType,
        "hasConnectivity": hasConnectivity,
        "document": document,
        "entranceMode": entranceMode,
        "paymentTypeCode": paymentTypeCode,
        "hasPassword": hasPassword,
        "changeAmount": changeAmount,
        "productName": productName,
        "hasWarranty": hasWarranty,
        "merchantName": merchantName,
        "hasSentMerchantCode": hasSentMerchantCode,
        "isOnlyIntegrationCancelable": isOnlyIntegrationCancelable,
        "primaryProductCode": primaryProductCode,
        "originalTransactionId": originalTransactionId,
        "requestDate": requestDate,
        "firstQuotaAmount": firstQuotaAmount,
        "secondaryProductCode": secondaryProductCode,
        "pan": pan,
        "applicationName": applicationName,
        "isFinancialProduct": isFinancialProduct,
        "v40Code": v40Code,
        "merchantCode": merchantCode,
        "totalizerCode": totalizerCode,
        "isDoubleFontPrintAllowed": isDoubleFontPrintAllowed,
        "hasSentReference": hasSentReference,
        "isExternalCall": isExternalCall,
        "originalTransactionDate": originalTransactionDate,
        "interestAmount": interestAmount,
        "receiptPrintPermission": receiptPrintPermission,
        "cardCaptureType": cardCaptureType,
        "upFrontAmount": upFrontAmount,
        "hasPrintedClientReceipt": hasPrintedClientReceipt,
        "creditAdminTax": creditAdminTax,
        "primaryProductName": primaryProductName,
        "avaiableBalance": avaiableBalance,
        "merchantAddress": merchantAddress,
        "applicationId": applicationId,
        "numberOfQuotas": numberOfQuotas,
        "boardingTax": boardingTax,
        "paymentTransactionId": paymentTransactionId,
        "firstQuotaDate": firstQuotaDate,
        "hasSignature": hasSignature,
        "secondaryProductName": secondaryProductName,
        "statusCode": statusCode,
      };
}
