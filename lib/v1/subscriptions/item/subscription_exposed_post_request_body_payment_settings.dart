// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_types.dart';
import './subscription_exposed_post_request_body_payment_settings_save_default_payment_method.dart';

/// auto generated
/// Payment settings to pass to invoices created by the subscription.
class SubscriptionExposedPostRequestBodyPaymentSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment_method_options property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions?
      paymentMethodOptions;

  ///  The payment_method_types property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes?
      paymentMethodTypes;

  ///  The save_default_payment_method property
  SubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod?
      saveDefaultPaymentMethod;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPaymentSettings] and sets the default values.
  SubscriptionExposedPostRequestBodyPaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions>(
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getObjectValue<
                SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes>(
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes
                .createFromDiscriminatorValue);
    deserializerMap['save_default_payment_method'] = (node) =>
        saveDefaultPaymentMethod = node.getEnumValue<
                SubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod>(
            (stringValue) =>
                SubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod
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
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes);
    writer.writeEnumValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsSaveDefaultPaymentMethod>(
        'save_default_payment_method',
        saveDefaultPaymentMethod,
        (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
