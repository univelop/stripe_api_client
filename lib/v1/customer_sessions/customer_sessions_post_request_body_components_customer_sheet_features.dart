// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components_customer_sheet_features_payment_method_allow_redisplay_filters.dart';
import './customer_sessions_post_request_body_components_customer_sheet_features_payment_method_remove.dart';

/// auto generated
class CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_allow_redisplay_filters property
  Iterable<
          CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  The payment_method_remove property
  CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  /// Instantiates a new [CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures] and sets the default values.
  CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
