// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsAcssDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
  String? expectedDebitDate;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Institution number of the bank account
  String? institutionNumber;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  ID of the mandate used to make this payment.
  String? mandate;

  ///  Transit number of the bank account.
  String? transitNumber;

  /// Instantiates a new [PaymentMethodDetailsAcssDebit] and sets the default values.
  PaymentMethodDetailsAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAcssDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['expected_debit_date'] =
        (node) => expectedDebitDate = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['institution_number'] =
        (node) => institutionNumber = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap['transit_number'] =
        (node) => transitNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('expected_debit_date', expectedDebitDate);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('institution_number', institutionNumber);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate', mandate);
    writer.writeStringValue('transit_number', transitNumber);
    writer.writeAdditionalData(additionalData);
  }
}
