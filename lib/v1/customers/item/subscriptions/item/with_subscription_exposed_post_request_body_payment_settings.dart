// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_types.dart';
import './with_subscription_exposed_post_request_body_payment_settings_save_default_payment_method.dart';

/// auto generated
/// Payment settings to pass to invoices created by the subscription.
class WithSubscriptionExposedPostRequestBodyPaymentSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_options property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions?
      paymentMethodOptions;

  ///  The payment_method_types property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes?
      paymentMethodTypes;

  ///  The save_default_payment_method property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod?
      saveDefaultPaymentMethod;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettings] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions>(
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap[
        'payment_method_types'] = (node) => paymentMethodTypes = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes
            .createFromDiscriminatorValue);
    deserializerMap['save_default_payment_method'] = (node) =>
        saveDefaultPaymentMethod = node.getEnumValue<
                WithSubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod>(
            (stringValue) =>
                WithSubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod>(
        'save_default_payment_method',
        saveDefaultPaymentMethod,
        (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
