// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features_payment_method_allow_redisplay_filters.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features_payment_method_redisplay.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features_payment_method_remove.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features_payment_method_save.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features_payment_method_save_allow_redisplay_override.dart';

/// auto generated
/// This hash contains the features the mobile payment element supports.
class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the mobile payment element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
  Iterable<
          CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  Controls whether or not the mobile payment element shows saved payment methods.
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay?
      paymentMethodRedisplay;

  ///  Controls whether the mobile payment element displays the option to remove a saved payment method."Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  ///  Controls whether the mobile payment element displays a checkbox offering to save a new payment method.If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave?
      paymentMethodSave;

  ///  Allows overriding the value of allow_override when saving a new payment method when payment_method_save is set to disabled. Use values: "always", "limited", or "unspecified".If not specified, defaults to `nil` (no override value).
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride?
      paymentMethodSaveAllowRedisplayOverride;

  /// Instantiates a new [CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures] and sets the default values.
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay'] = (node) =>
        paymentMethodRedisplay = node.getEnumValue<
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave>(
        (stringValue) =>
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_save_allow_redisplay_override'] = (node) =>
        paymentMethodSaveAllowRedisplayOverride = node.getEnumValue<
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride
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
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay>(
        'payment_method_redisplay', paymentMethodRedisplay, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride>(
        'payment_method_save_allow_redisplay_override',
        paymentMethodSaveAllowRedisplayOverride,
        (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
