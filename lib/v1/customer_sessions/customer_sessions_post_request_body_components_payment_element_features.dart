// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components_payment_element_features_payment_method_allow_redisplay_filters.dart';
import './customer_sessions_post_request_body_components_payment_element_features_payment_method_redisplay.dart';
import './customer_sessions_post_request_body_components_payment_element_features_payment_method_remove.dart';
import './customer_sessions_post_request_body_components_payment_element_features_payment_method_save.dart';
import './customer_sessions_post_request_body_components_payment_element_features_payment_method_save_usage.dart';

/// auto generated
class CustomerSessionsPostRequestBodyComponentsPaymentElementFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_allow_redisplay_filters property
  Iterable<
          CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  The payment_method_redisplay property
  CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRedisplay?
      paymentMethodRedisplay;

  ///  The payment_method_redisplay_limit property
  int? paymentMethodRedisplayLimit;

  ///  The payment_method_remove property
  CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  ///  The payment_method_save property
  CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSave?
      paymentMethodSave;

  ///  The payment_method_save_usage property
  CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSaveUsage?
      paymentMethodSaveUsage;

  /// Instantiates a new [CustomerSessionsPostRequestBodyComponentsPaymentElementFeatures] and sets the default values.
  CustomerSessionsPostRequestBodyComponentsPaymentElementFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBodyComponentsPaymentElementFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionsPostRequestBodyComponentsPaymentElementFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay'] = (node) =>
        paymentMethodRedisplay = node.getEnumValue<
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRedisplay>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay_limit'] =
        (node) => paymentMethodRedisplayLimit = node.getIntValue();
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSave>(
        (stringValue) =>
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSave
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_save_usage'] = (node) =>
        paymentMethodSaveUsage = node.getEnumValue<
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSaveUsage>(
            (stringValue) =>
                CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSaveUsage
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
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRedisplay>(
        'payment_method_redisplay', paymentMethodRedisplay, (e) => e?.value);
    writer.writeIntValue(
        'payment_method_redisplay_limit', paymentMethodRedisplayLimit);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElementFeaturesPaymentMethodSaveUsage>(
        'payment_method_save_usage', paymentMethodSaveUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
