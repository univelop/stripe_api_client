// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodAcssDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Institution number of the bank account.
  String? institutionNumber;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  Transit number of the bank account.
  String? transitNumber;

  /// Instantiates a new [PaymentMethodAcssDebit] and sets the default values.
  PaymentMethodAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodAcssDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['institution_number'] =
        (node) => institutionNumber = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['transit_number'] =
        (node) => transitNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('institution_number', institutionNumber);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('transit_number', transitNumber);
    writer.writeAdditionalData(additionalData);
  }
}
