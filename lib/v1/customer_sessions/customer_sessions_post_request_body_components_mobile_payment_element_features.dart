// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element_features_payment_method_allow_redisplay_filters.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element_features_payment_method_redisplay.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element_features_payment_method_remove.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element_features_payment_method_save.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element_features_payment_method_save_allow_redisplay_override.dart';

/// auto generated
class CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_allow_redisplay_filters property
  Iterable<
          CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  The payment_method_redisplay property
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay?
      paymentMethodRedisplay;

  ///  The payment_method_remove property
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  ///  The payment_method_save property
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSave?
      paymentMethodSave;

  ///  The payment_method_save_allow_redisplay_override property
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride?
      paymentMethodSaveAllowRedisplayOverride;

  /// Instantiates a new [CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeatures] and sets the default values.
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay'] = (node) =>
        paymentMethodRedisplay = node.getEnumValue<
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSave>(
        (stringValue) =>
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSave
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_save_allow_redisplay_override'] = (node) =>
        paymentMethodSaveAllowRedisplayOverride = node.getEnumValue<
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride
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
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay>(
        'payment_method_redisplay', paymentMethodRedisplay, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride>(
        'payment_method_save_allow_redisplay_override',
        paymentMethodSaveAllowRedisplayOverride,
        (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
