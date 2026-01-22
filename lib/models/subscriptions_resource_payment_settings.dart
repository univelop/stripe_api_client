// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_resource_payment_method_options.dart';
import './subscriptions_resource_payment_settings_payment_method_types.dart';
import './subscriptions_resource_payment_settings_save_default_payment_method.dart';

/// auto generated
class SubscriptionsResourcePaymentSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Payment-method-specific configuration to provide to invoices created by the subscription.
  SubscriptionsResourcePaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types to provide to every invoice created by the subscription. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice).
  Iterable<SubscriptionsResourcePaymentSettingsPaymentMethodTypes>?
      paymentMethodTypes;

  ///  Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off`.
  SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod?
      saveDefaultPaymentMethod;

  /// Instantiates a new [SubscriptionsResourcePaymentSettings] and sets the default values.
  SubscriptionsResourcePaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourcePaymentSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsResourcePaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<SubscriptionsResourcePaymentMethodOptions>(
            SubscriptionsResourcePaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getCollectionOfEnumValues<
                SubscriptionsResourcePaymentSettingsPaymentMethodTypes>(
            (stringValue) =>
                SubscriptionsResourcePaymentSettingsPaymentMethodTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['save_default_payment_method'] = (node) =>
        saveDefaultPaymentMethod = node.getEnumValue<
                SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod>(
            (stringValue) =>
                SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionsResourcePaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfEnumValues<
            SubscriptionsResourcePaymentSettingsPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes, (e) => e?.value);
    writer.writeEnumValue<
            SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod>(
        'save_default_payment_method',
        saveDefaultPaymentMethod,
        (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
