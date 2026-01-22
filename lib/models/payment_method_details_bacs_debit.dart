// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsBacsDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
  String? expectedDebitDate;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  ID of the mandate used to make this payment.
  String? mandate;

  ///  Sort code of the bank account. (e.g., `10-20-30`)
  String? sortCode;

  /// Instantiates a new [PaymentMethodDetailsBacsDebit] and sets the default values.
  PaymentMethodDetailsBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsBacsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expected_debit_date'] =
        (node) => expectedDebitDate = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap['sort_code'] = (node) => sortCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('expected_debit_date', expectedDebitDate);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate', mandate);
    writer.writeStringValue('sort_code', sortCode);
    writer.writeAdditionalData(additionalData);
  }
}
