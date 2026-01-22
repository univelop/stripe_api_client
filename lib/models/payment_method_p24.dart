// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_p24_bank.dart';

/// auto generated
class PaymentMethodP24 implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's bank, if provided.
  PaymentMethodP24Bank? bank;

  /// Instantiates a new [PaymentMethodP24] and sets the default values.
  PaymentMethodP24() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodP24 createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodP24();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank =
        node.getEnumValue<PaymentMethodP24Bank>((stringValue) =>
            PaymentMethodP24Bank.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodP24Bank>('bank', bank, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
