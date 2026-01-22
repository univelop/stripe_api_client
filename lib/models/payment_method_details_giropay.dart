// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsGiropay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank code of bank associated with the bank account.
  String? bankCode;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Bank Identifier Code of the bank associated with the bank account.
  String? bic;

  ///  Owner's verified full name. Values are verified or provided by Giropay directly(if supported) at the time of authorization or settlement. They cannot be set or mutated.Giropay rarely provides this information so the attribute is usually empty.
  String? verifiedName;

  /// Instantiates a new [PaymentMethodDetailsGiropay] and sets the default values.
  PaymentMethodDetailsGiropay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsGiropay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsGiropay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['bic'] = (node) => bic = node.getStringValue();
    deserializerMap['verified_name'] =
        (node) => verifiedName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('bic', bic);
    writer.writeStringValue('verified_name', verifiedName);
    writer.writeAdditionalData(additionalData);
  }
}
