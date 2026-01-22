// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_setting_subscription_schedule_setting.dart';
import './subscription_billing_thresholds.dart';
import './subscription_schedules_resource_default_settings_automatic_tax.dart';
import './subscription_schedules_resource_default_settings_billing_cycle_anchor.dart';
import './subscription_schedules_resource_default_settings_collection_method.dart';
import './subscription_schedules_resource_default_settings_default_payment_method.dart';
import './subscription_schedules_resource_default_settings_on_behalf_of.dart';
import './subscription_transfer_data.dart';

/// auto generated
class SubscriptionSchedulesResourceDefaultSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
  double? applicationFeePercent;

  ///  The automatic_tax property
  SubscriptionSchedulesResourceDefaultSettingsAutomaticTax? automaticTax;

  ///  Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
  SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor?
      billingCycleAnchor;

  ///  Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
  SubscriptionBillingThresholds? billingThresholds;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
  SubscriptionSchedulesResourceDefaultSettingsCollectionMethod?
      collectionMethod;

  ///  ID of the default payment method for the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
  SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod?
      defaultPaymentMethod;

  ///  Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  String? description;

  ///  The invoice_settings property
  InvoiceSettingSubscriptionScheduleSetting? invoiceSettings;

  ///  The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
  SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf? onBehalfOf;

  ///  The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
  SubscriptionTransferData? transferData;

  /// Instantiates a new [SubscriptionSchedulesResourceDefaultSettings] and sets the default values.
  SubscriptionSchedulesResourceDefaultSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesResourceDefaultSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesResourceDefaultSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<
                SubscriptionSchedulesResourceDefaultSettingsAutomaticTax>(
            SubscriptionSchedulesResourceDefaultSettingsAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<
                SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor>(
            (stringValue) =>
                SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionBillingThresholds>(
            SubscriptionBillingThresholds.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<
                SubscriptionSchedulesResourceDefaultSettingsCollectionMethod>(
            (stringValue) =>
                SubscriptionSchedulesResourceDefaultSettingsCollectionMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['default_payment_method'] = (node) => defaultPaymentMethod =
        node.getObjectValue<
                SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod>(
            SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod
                .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<InvoiceSettingSubscriptionScheduleSetting>(
            InvoiceSettingSubscriptionScheduleSetting
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf = node
        .getObjectValue<SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf>(
            SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf
                .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<SubscriptionTransferData>(
            SubscriptionTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<
            SubscriptionSchedulesResourceDefaultSettingsAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<SubscriptionBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<
            SubscriptionSchedulesResourceDefaultSettingsCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeObjectValue<
            SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod>(
        'default_payment_method', defaultPaymentMethod);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<InvoiceSettingSubscriptionScheduleSetting>(
        'invoice_settings', invoiceSettings);
    writer.writeObjectValue<
            SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<SubscriptionTransferData>(
        'transfer_data', transferData);
    writer.writeAdditionalData(additionalData);
  }
}
