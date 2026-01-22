// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_payment_element_resource_features_payment_method_allow_redisplay_filters.dart';
import './customer_session_resource_components_resource_payment_element_resource_features_payment_method_redisplay.dart';
import './customer_session_resource_components_resource_payment_element_resource_features_payment_method_remove.dart';
import './customer_session_resource_components_resource_payment_element_resource_features_payment_method_save.dart';
import './customer_session_resource_components_resource_payment_element_resource_features_payment_method_save_usage.dart';

/// auto generated
/// This hash contains the features the Payment Element supports.
class CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
  Iterable<
          CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay?
      paymentMethodRedisplay;

  ///  Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`. The maximum redisplay limit is `10`.
  int? paymentMethodRedisplayLimit;

  ///  Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  ///  Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave?
      paymentMethodSave;

  ///  When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage?
      paymentMethodSaveUsage;

  /// Instantiates a new [CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures] and sets the default values.
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay'] = (node) =>
        paymentMethodRedisplay = node.getEnumValue<
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_redisplay_limit'] =
        (node) => paymentMethodRedisplayLimit = node.getIntValue();
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave>(
        (stringValue) =>
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_save_usage'] = (node) =>
        paymentMethodSaveUsage = node.getEnumValue<
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage
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
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay>(
        'payment_method_redisplay', paymentMethodRedisplay, (e) => e?.value);
    writer.writeIntValue(
        'payment_method_redisplay_limit', paymentMethodRedisplayLimit);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage>(
        'payment_method_save_usage', paymentMethodSaveUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
