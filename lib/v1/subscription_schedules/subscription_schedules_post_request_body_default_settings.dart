// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_default_settings_automatic_tax.dart';
import './subscription_schedules_post_request_body_default_settings_billing_cycle_anchor.dart';
import './subscription_schedules_post_request_body_default_settings_billing_thresholds.dart';
import './subscription_schedules_post_request_body_default_settings_collection_method.dart';
import './subscription_schedules_post_request_body_default_settings_description.dart';
import './subscription_schedules_post_request_body_default_settings_invoice_settings.dart';
import './subscription_schedules_post_request_body_default_settings_on_behalf_of.dart';
import './subscription_schedules_post_request_body_default_settings_transfer_data.dart';

/// auto generated
/// Object representing the subscription schedule's default settings.
class SubscriptionSchedulesPostRequestBodyDefaultSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The automatic_tax property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsAutomaticTax? automaticTax;

  ///  The billing_cycle_anchor property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingCycleAnchor?
      billingCycleAnchor;

  ///  The billing_thresholds property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds?
      billingThresholds;

  ///  The collection_method property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsCollectionMethod?
      collectionMethod;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The description property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsDescription? description;

  ///  The invoice_settings property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsInvoiceSettings?
      invoiceSettings;

  ///  The on_behalf_of property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsOnBehalfOf? onBehalfOf;

  ///  The transfer_data property
  SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData? transferData;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyDefaultSettings] and sets the default values.
  SubscriptionSchedulesPostRequestBodyDefaultSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyDefaultSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyDefaultSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap[
        'automatic_tax'] = (node) => automaticTax = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsAutomaticTax>(
        SubscriptionSchedulesPostRequestBodyDefaultSettingsAutomaticTax
            .createFromDiscriminatorValue);
    deserializerMap[
        'billing_cycle_anchor'] = (node) => billingCycleAnchor = node.getEnumValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingCycleAnchor>(
        (stringValue) =>
            SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingCycleAnchor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'billing_thresholds'] = (node) => billingThresholds = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds>(
        SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds
            .createFromDiscriminatorValue);
    deserializerMap[
        'collection_method'] = (node) => collectionMethod = node.getEnumValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsCollectionMethod>(
        (stringValue) =>
            SubscriptionSchedulesPostRequestBodyDefaultSettingsCollectionMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyDefaultSettingsDescription>(
            SubscriptionSchedulesPostRequestBodyDefaultSettingsDescription
                .createFromDiscriminatorValue);
    deserializerMap[
        'invoice_settings'] = (node) => invoiceSettings = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsInvoiceSettings>(
        SubscriptionSchedulesPostRequestBodyDefaultSettingsInvoiceSettings
            .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyDefaultSettingsOnBehalfOf>(
            SubscriptionSchedulesPostRequestBodyDefaultSettingsOnBehalfOf
                .createFromDiscriminatorValue);
    deserializerMap[
        'transfer_data'] = (node) => transferData = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData>(
        SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsDescription>(
        'description', description);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData>(
        'transfer_data', transferData);
    writer.writeAdditionalData(additionalData);
  }
}
