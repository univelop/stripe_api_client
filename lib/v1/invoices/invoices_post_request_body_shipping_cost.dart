// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data.dart';

/// auto generated
/// Settings for the cost of shipping for this invoice.
class InvoicesPostRequestBodyShippingCost
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The shipping_rate property
  String? shippingRate;

  ///  The shipping_rate_data property
  InvoicesPostRequestBodyShippingCostShippingRateData? shippingRateData;

  /// Instantiates a new [InvoicesPostRequestBodyShippingCost] and sets the default values.
  InvoicesPostRequestBodyShippingCost() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyShippingCost createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyShippingCost();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['shipping_rate'] =
        (node) => shippingRate = node.getStringValue();
    deserializerMap['shipping_rate_data'] = (node) => shippingRateData = node
        .getObjectValue<InvoicesPostRequestBodyShippingCostShippingRateData>(
            InvoicesPostRequestBodyShippingCostShippingRateData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('shipping_rate', shippingRate);
    writer
        .writeObjectValue<InvoicesPostRequestBodyShippingCostShippingRateData>(
            'shipping_rate_data', shippingRateData);
    writer.writeAdditionalData(additionalData);
  }
}
