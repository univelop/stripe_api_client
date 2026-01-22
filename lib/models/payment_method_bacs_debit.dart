// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodBacsDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  Sort code of the bank account. (e.g., `10-20-30`)
  String? sortCode;

  /// Instantiates a new [PaymentMethodBacsDebit] and sets the default values.
  PaymentMethodBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodBacsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['sort_code'] = (node) => sortCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('sort_code', sortCode);
    writer.writeAdditionalData(additionalData);
  }
}
