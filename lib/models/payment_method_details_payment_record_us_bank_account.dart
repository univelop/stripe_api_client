// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_payment_record_us_bank_account_account_holder_type.dart';
import './payment_method_details_payment_record_us_bank_account_account_type.dart';
import './payment_method_details_payment_record_us_bank_account_mandate.dart';

/// auto generated
class PaymentMethodDetailsPaymentRecordUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The type of entity that holds the account. This can be either 'individual' or 'company'.
  PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType?
      accountHolderType;

  ///  The type of the bank account. This can be either 'checking' or 'savings'.
  PaymentMethodDetailsPaymentRecordUsBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
  String? expectedDebitDate;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  ID of the mandate used to make this payment.
  PaymentMethodDetailsPaymentRecordUsBankAccountMandate? mandate;

  ///  The ACH payment reference for this transaction.
  String? paymentReference;

  ///  The routing number for the bank account.
  String? routingNumber;

  /// Instantiates a new [PaymentMethodDetailsPaymentRecordUsBankAccount] and sets the default values.
  PaymentMethodDetailsPaymentRecordUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsPaymentRecordUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodDetailsPaymentRecordUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<
                PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType>(
            (stringValue) =>
                PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['account_type'] = (node) => accountType = node.getEnumValue<
            PaymentMethodDetailsPaymentRecordUsBankAccountAccountType>(
        (stringValue) =>
            PaymentMethodDetailsPaymentRecordUsBankAccountAccountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['expected_debit_date'] =
        (node) => expectedDebitDate = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node
        .getObjectValue<PaymentMethodDetailsPaymentRecordUsBankAccountMandate>(
            PaymentMethodDetailsPaymentRecordUsBankAccountMandate
                .createFromDiscriminatorValue);
    deserializerMap['payment_reference'] =
        (node) => paymentReference = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeEnumValue<
            PaymentMethodDetailsPaymentRecordUsBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('expected_debit_date', expectedDebitDate);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<
            PaymentMethodDetailsPaymentRecordUsBankAccountMandate>(
        'mandate', mandate);
    writer.writeStringValue('payment_reference', paymentReference);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
