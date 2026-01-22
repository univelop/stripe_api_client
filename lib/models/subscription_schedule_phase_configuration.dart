// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_stackable_discount.dart';
import './invoice_setting_subscription_schedule_phase_setting.dart';
import './schedules_phase_automatic_tax.dart';
import './subscription_billing_thresholds.dart';
import './subscription_schedule_add_invoice_item.dart';
import './subscription_schedule_configuration_item.dart';
import './subscription_schedule_phase_configuration_billing_cycle_anchor.dart';
import './subscription_schedule_phase_configuration_collection_method.dart';
import './subscription_schedule_phase_configuration_default_payment_method.dart';
import './subscription_schedule_phase_configuration_metadata.dart';
import './subscription_schedule_phase_configuration_on_behalf_of.dart';
import './subscription_schedule_phase_configuration_proration_behavior.dart';
import './subscription_transfer_data.dart';
import './tax_rate.dart';

/// auto generated
/// A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period.
class SubscriptionSchedulePhaseConfiguration
    implements AdditionalDataHolder, Parsable {
  ///  A list of prices and quantities that will generate invoice items appended to the next invoice for this phase.
  Iterable<SubscriptionScheduleAddInvoiceItem>? addInvoiceItems;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
  double? applicationFeePercent;

  ///  The automatic_tax property
  SchedulesPhaseAutomaticTax? automaticTax;

  ///  Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
  SubscriptionSchedulePhaseConfigurationBillingCycleAnchor? billingCycleAnchor;

  ///  Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
  SubscriptionBillingThresholds? billingThresholds;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
  SubscriptionSchedulePhaseConfigurationCollectionMethod? collectionMethod;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
  SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod?
      defaultPaymentMethod;

  ///  The default tax rates to apply to the subscription during this phase of the subscription schedule.
  Iterable<TaxRate>? defaultTaxRates;

  ///  Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  String? description;

  ///  The stackable discounts that will be applied to the subscription on this phase. Subscription item discounts are applied before subscription discounts.
  Iterable<DiscountsResourceStackableDiscount>? discounts;

  ///  The end of this phase of the subscription schedule.
  int? endDate;

  ///  The invoice settings applicable during this phase.
  InvoiceSettingSubscriptionSchedulePhaseSetting? invoiceSettings;

  ///  Subscription items to configure the subscription to during this phase of the subscription schedule.
  Iterable<SubscriptionScheduleConfigurationItem>? items;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered. Updating the underlying subscription's `metadata` directly will not affect the current phase's `metadata`.
  SubscriptionSchedulePhaseConfigurationMetadata? metadata;

  ///  The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
  SubscriptionSchedulePhaseConfigurationOnBehalfOf? onBehalfOf;

  ///  When transitioning phases, controls how prorations are handled (if any). Possible values are `create_prorations`, `none`, and `always_invoice`.
  SubscriptionSchedulePhaseConfigurationProrationBehavior? prorationBehavior;

  ///  The start of this phase of the subscription schedule.
  int? startDate;

  ///  The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
  SubscriptionTransferData? transferData;

  ///  When the trial ends within the phase.
  int? trialEnd;

  /// Instantiates a new [SubscriptionSchedulePhaseConfiguration] and sets the default values.
  SubscriptionSchedulePhaseConfiguration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulePhaseConfiguration createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionSchedulePhaseConfiguration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['add_invoice_items'] = (node) => addInvoiceItems =
        node.getCollectionOfObjectValues<SubscriptionScheduleAddInvoiceItem>(
            SubscriptionScheduleAddInvoiceItem.createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<SchedulesPhaseAutomaticTax>(
            SchedulesPhaseAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<
                SubscriptionSchedulePhaseConfigurationBillingCycleAnchor>(
            (stringValue) =>
                SubscriptionSchedulePhaseConfigurationBillingCycleAnchor.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionBillingThresholds>(
            SubscriptionBillingThresholds.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod = node
        .getEnumValue<SubscriptionSchedulePhaseConfigurationCollectionMethod>(
            (stringValue) =>
                SubscriptionSchedulePhaseConfigurationCollectionMethod.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['default_payment_method'] = (node) => defaultPaymentMethod =
        node.getObjectValue<
                SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod>(
            SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod
                .createFromDiscriminatorValue);
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
            DiscountsResourceStackableDiscount.createFromDiscriminatorValue);
    deserializerMap['end_date'] = (node) => endDate = node.getIntValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<InvoiceSettingSubscriptionSchedulePhaseSetting>(
            InvoiceSettingSubscriptionSchedulePhaseSetting
                .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<SubscriptionScheduleConfigurationItem>(
            SubscriptionScheduleConfigurationItem.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionSchedulePhaseConfigurationMetadata>(
            SubscriptionSchedulePhaseConfigurationMetadata
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<SubscriptionSchedulePhaseConfigurationOnBehalfOf>(
            SubscriptionSchedulePhaseConfigurationOnBehalfOf
                .createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior = node
        .getEnumValue<SubscriptionSchedulePhaseConfigurationProrationBehavior>(
            (stringValue) =>
                SubscriptionSchedulePhaseConfigurationProrationBehavior.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getIntValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<SubscriptionTransferData>(
            SubscriptionTransferData.createFromDiscriminatorValue);
    deserializerMap['trial_end'] = (node) => trialEnd = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<SubscriptionScheduleAddInvoiceItem>(
        'add_invoice_items', addInvoiceItems);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<SchedulesPhaseAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            SubscriptionSchedulePhaseConfigurationBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<SubscriptionBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer
        .writeEnumValue<SubscriptionSchedulePhaseConfigurationCollectionMethod>(
            'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod>(
        'default_payment_method', defaultPaymentMethod);
    writer.writeCollectionOfObjectValues<TaxRate>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
        'discounts', discounts);
    writer.writeIntValue('end_date', endDate);
    writer.writeObjectValue<InvoiceSettingSubscriptionSchedulePhaseSetting>(
        'invoice_settings', invoiceSettings);
    writer.writeCollectionOfObjectValues<SubscriptionScheduleConfigurationItem>(
        'items', items);
    writer.writeObjectValue<SubscriptionSchedulePhaseConfigurationMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<SubscriptionSchedulePhaseConfigurationOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeEnumValue<
            SubscriptionSchedulePhaseConfigurationProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('start_date', startDate);
    writer.writeObjectValue<SubscriptionTransferData>(
        'transfer_data', transferData);
    writer.writeIntValue('trial_end', trialEnd);
    writer.writeAdditionalData(additionalData);
  }
}
