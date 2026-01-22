// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_saved_payment_method_options_allow_redisplay_filters.dart';
import './payment_pages_checkout_session_saved_payment_method_options_payment_method_remove.dart';
import './payment_pages_checkout_session_saved_payment_method_options_payment_method_save.dart';

/// auto generated
class PaymentPagesCheckoutSessionSavedPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uses the `allow_redisplay` value of each saved payment method to filter the set presented to a returning customer. By default, only saved payment methods with ’allow_redisplay: ‘always’ are shown in Checkout.
  Iterable<
          PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters>?
      allowRedisplayFilters;

  ///  Enable customers to choose if they wish to remove their saved payment methods. Disabled by default.
  PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove?
      paymentMethodRemove;

  ///  Enable customers to choose if they wish to save their payment method for future use. Disabled by default.
  PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave?
      paymentMethodSave;

  /// Instantiates a new [PaymentPagesCheckoutSessionSavedPaymentMethodOptions] and sets the default values.
  PaymentPagesCheckoutSessionSavedPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionSavedPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionSavedPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay_filters'] = (node) =>
        allowRedisplayFilters = node.getCollectionOfEnumValues<
                PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters>(
            (stringValue) =>
                PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove>(
        (stringValue) =>
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payment_method_save'] = (node) => paymentMethodSave = node.getEnumValue<
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave>(
        (stringValue) =>
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave
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
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters>(
        'allow_redisplay_filters', allowRedisplayFilters, (e) => e?.value);
    writer.writeEnumValue<
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeEnumValue<
            PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave>(
        'payment_method_save', paymentMethodSave, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
