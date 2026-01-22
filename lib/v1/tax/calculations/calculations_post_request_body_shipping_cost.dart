// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_shipping_cost_tax_behavior.dart';

/// auto generated
/// Shipping cost details to be used for the calculation.
class CalculationsPostRequestBodyShippingCost
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The shipping_rate property
  String? shippingRate;

  ///  The tax_behavior property
  CalculationsPostRequestBodyShippingCostTaxBehavior? taxBehavior;

  ///  The tax_code property
  String? taxCode;

  /// Instantiates a new [CalculationsPostRequestBodyShippingCost] and sets the default values.
  CalculationsPostRequestBodyShippingCost() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyShippingCost createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CalculationsPostRequestBodyShippingCost();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['shipping_rate'] =
        (node) => shippingRate = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<CalculationsPostRequestBodyShippingCostTaxBehavior>(
            (stringValue) => CalculationsPostRequestBodyShippingCostTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('shipping_rate', shippingRate);
    writer.writeEnumValue<CalculationsPostRequestBodyShippingCostTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
