// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_shipping_cost_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithInvoicePostRequestBodyShippingCostMember1]
class WithInvoicePostRequestBodyShippingCost implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithInvoicePostRequestBodyShippingCostMember1]
  WithInvoicePostRequestBodyShippingCostMember1?
      withInvoicePostRequestBodyShippingCostMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingCost createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithInvoicePostRequestBodyShippingCost();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withInvoicePostRequestBodyShippingCostMember1 =
          WithInvoicePostRequestBodyShippingCostMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withInvoicePostRequestBodyShippingCostMember1 != null) {
      withInvoicePostRequestBodyShippingCostMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<WithInvoicePostRequestBodyShippingCostMember1>(
          null, withInvoicePostRequestBodyShippingCostMember1);
    }
  }
}
