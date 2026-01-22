// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_delivery_estimate.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_fixed_amount.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_metadata.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_tax_behavior.dart';
import './sessions_post_request_body_shipping_options_shipping_rate_data_type.dart';

/// auto generated
class SessionsPostRequestBodyShippingOptionsShippingRateData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delivery_estimate property
  SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate?
      deliveryEstimate;

  ///  The display_name property
  String? displayName;

  ///  The fixed_amount property
  SessionsPostRequestBodyShippingOptionsShippingRateDataFixedAmount?
      fixedAmount;

  ///  The metadata property
  SessionsPostRequestBodyShippingOptionsShippingRateDataMetadata? metadata;

  ///  The tax_behavior property
  SessionsPostRequestBodyShippingOptionsShippingRateDataTaxBehavior?
      taxBehavior;

  ///  The tax_code property
  String? taxCode;

  ///  The type property
  SessionsPostRequestBodyShippingOptionsShippingRateDataType? type_;

  /// Instantiates a new [SessionsPostRequestBodyShippingOptionsShippingRateData] and sets the default values.
  SessionsPostRequestBodyShippingOptionsShippingRateData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyShippingOptionsShippingRateData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyShippingOptionsShippingRateData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'delivery_estimate'] = (node) => deliveryEstimate = node.getObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate>(
        SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate
            .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap[
        'fixed_amount'] = (node) => fixedAmount = node.getObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataFixedAmount>(
        SessionsPostRequestBodyShippingOptionsShippingRateDataFixedAmount
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataMetadata>(
        SessionsPostRequestBodyShippingOptionsShippingRateDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataTaxBehavior>(
        (stringValue) =>
            SessionsPostRequestBodyShippingOptionsShippingRateDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataType>(
        (stringValue) =>
            SessionsPostRequestBodyShippingOptionsShippingRateDataType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataDeliveryEstimate>(
        'delivery_estimate', deliveryEstimate);
    writer.writeStringValue('display_name', displayName);
    writer.writeObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeObjectValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeEnumValue<
            SessionsPostRequestBodyShippingOptionsShippingRateDataType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
