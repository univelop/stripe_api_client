// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_ach_debit_account_holder_type.dart';

/// auto generated
class PaymentMethodDetailsAchDebit implements AdditionalDataHolder, Parsable {
  ///  Type of entity that holds the account. This can be either `individual` or `company`.
  PaymentMethodDetailsAchDebitAccountHolderType? accountHolderType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Two-letter ISO code representing the country the bank account is located in.
  String? country;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  Routing transit number of the bank account.
  String? routingNumber;

  /// Instantiates a new [PaymentMethodDetailsAchDebit] and sets the default values.
  PaymentMethodDetailsAchDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAchDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAchDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<PaymentMethodDetailsAchDebitAccountHolderType>(
            (stringValue) => PaymentMethodDetailsAchDebitAccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodDetailsAchDebitAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('country', country);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
