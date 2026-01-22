// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsAmountDetailsResourceShipping
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If a physical good is being shipped, the cost of shipping represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than or equal to 0.
  int? amount;

  ///  If a physical good is being shipped, the postal code of where it is being shipped from. At most 10 alphanumeric characters long, hyphens are allowed.
  String? fromPostalCode;

  ///  If a physical good is being shipped, the postal code of where it is being shipped to. At most 10 alphanumeric characters long, hyphens are allowed.
  String? toPostalCode;

  /// Instantiates a new [PaymentFlowsAmountDetailsResourceShipping] and sets the default values.
  PaymentFlowsAmountDetailsResourceShipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAmountDetailsResourceShipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentFlowsAmountDetailsResourceShipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['from_postal_code'] =
        (node) => fromPostalCode = node.getStringValue();
    deserializerMap['to_postal_code'] =
        (node) => toPostalCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('from_postal_code', fromPostalCode);
    writer.writeStringValue('to_postal_code', toPostalCode);
    writer.writeAdditionalData(additionalData);
  }
}
