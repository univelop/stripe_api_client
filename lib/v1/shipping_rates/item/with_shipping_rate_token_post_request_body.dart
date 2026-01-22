// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_shipping_rate_token_post_request_body_fixed_amount.dart';
import './with_shipping_rate_token_post_request_body_tax_behavior.dart';

/// auto generated
class WithShippingRateTokenPostRequestBody implements Parsable {
  ///  Whether the shipping rate can be used for new purchases. Defaults to `true`.
  bool? active;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
  WithShippingRateTokenPostRequestBodyFixedAmount? fixedAmount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
  WithShippingRateTokenPostRequestBodyTaxBehavior? taxBehavior;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithShippingRateTokenPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithShippingRateTokenPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fixed_amount'] = (node) => fixedAmount =
        node.getObjectValue<WithShippingRateTokenPostRequestBodyFixedAmount>(
            WithShippingRateTokenPostRequestBodyFixedAmount
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<WithShippingRateTokenPostRequestBodyTaxBehavior>(
            (stringValue) => WithShippingRateTokenPostRequestBodyTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithShippingRateTokenPostRequestBodyFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeStringValue('metadata', metadata);
    writer.writeEnumValue<WithShippingRateTokenPostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
  }
}
