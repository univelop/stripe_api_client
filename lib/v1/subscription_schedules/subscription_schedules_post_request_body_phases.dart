// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items.dart';
import './subscription_schedules_post_request_body_phases_automatic_tax.dart';
import './subscription_schedules_post_request_body_phases_billing_cycle_anchor.dart';
import './subscription_schedules_post_request_body_phases_billing_thresholds.dart';
import './subscription_schedules_post_request_body_phases_collection_method.dart';
import './subscription_schedules_post_request_body_phases_default_tax_rates.dart';
import './subscription_schedules_post_request_body_phases_description.dart';
import './subscription_schedules_post_request_body_phases_discounts.dart';
import './subscription_schedules_post_request_body_phases_duration.dart';
import './subscription_schedules_post_request_body_phases_invoice_settings.dart';
import './subscription_schedules_post_request_body_phases_items.dart';
import './subscription_schedules_post_request_body_phases_metadata.dart';
import './subscription_schedules_post_request_body_phases_proration_behavior.dart';
import './subscription_schedules_post_request_body_phases_transfer_data.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBodyPhases
    implements AdditionalDataHolder, Parsable {
  ///  The add_invoice_items property
  Iterable<SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems>?
      addInvoiceItems;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The automatic_tax property
  SubscriptionSchedulesPostRequestBodyPhasesAutomaticTax? automaticTax;

  ///  The billing_cycle_anchor property
  SubscriptionSchedulesPostRequestBodyPhasesBillingCycleAnchor?
      billingCycleAnchor;

  ///  The billing_thresholds property
  SubscriptionSchedulesPostRequestBodyPhasesBillingThresholds?
      billingThresholds;

  ///  The collection_method property
  SubscriptionSchedulesPostRequestBodyPhasesCollectionMethod? collectionMethod;

  ///  The currency property
  String? currency;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The default_tax_rates property
  SubscriptionSchedulesPostRequestBodyPhasesDefaultTaxRates? defaultTaxRates;

  ///  The description property
  SubscriptionSchedulesPostRequestBodyPhasesDescription? description;

  ///  The discounts property
  SubscriptionSchedulesPostRequestBodyPhasesDiscounts? discounts;

  ///  The duration property
  SubscriptionSchedulesPostRequestBodyPhasesDuration? duration;

  ///  The end_date property
  int? endDate;

  ///  The invoice_settings property
  SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings? invoiceSettings;

  ///  The items property
  Iterable<SubscriptionSchedulesPostRequestBodyPhasesItems>? items;

  ///  The metadata property
  SubscriptionSchedulesPostRequestBodyPhasesMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  ///  The proration_behavior property
  SubscriptionSchedulesPostRequestBodyPhasesProrationBehavior?
      prorationBehavior;

  ///  The transfer_data property
  SubscriptionSchedulesPostRequestBodyPhasesTransferData? transferData;

  ///  The trial property
  bool? trial;

  ///  The trial_end property
  int? trialEnd;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyPhases] and sets the default values.
  SubscriptionSchedulesPostRequestBodyPhases() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhases
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyPhases();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['add_invoice_items'] = (node) => addInvoiceItems =
        node.getCollectionOfObjectValues<
                SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems>(
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax = node
        .getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesAutomaticTax>(
            SubscriptionSchedulesPostRequestBodyPhasesAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<
                SubscriptionSchedulesPostRequestBodyPhasesBillingCycleAnchor>(
            (stringValue) =>
                SubscriptionSchedulesPostRequestBodyPhasesBillingCycleAnchor
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyPhasesBillingThresholds>(
            SubscriptionSchedulesPostRequestBodyPhasesBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<
                SubscriptionSchedulesPostRequestBodyPhasesCollectionMethod>(
            (stringValue) =>
                SubscriptionSchedulesPostRequestBodyPhasesCollectionMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyPhasesDefaultTaxRates>(
            SubscriptionSchedulesPostRequestBodyPhasesDefaultTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description = node
        .getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesDescription>(
            SubscriptionSchedulesPostRequestBodyPhasesDescription
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts = node
        .getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesDiscounts>(
            SubscriptionSchedulesPostRequestBodyPhasesDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['duration'] = (node) => duration =
        node.getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesDuration>(
            SubscriptionSchedulesPostRequestBodyPhasesDuration
                .createFromDiscriminatorValue);
    deserializerMap['end_date'] = (node) => endDate = node.getIntValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings>(
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<
                SubscriptionSchedulesPostRequestBodyPhasesItems>(
            SubscriptionSchedulesPostRequestBodyPhasesItems
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesMetadata>(
            SubscriptionSchedulesPostRequestBodyPhasesMetadata
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<
                SubscriptionSchedulesPostRequestBodyPhasesProrationBehavior>(
            (stringValue) =>
                SubscriptionSchedulesPostRequestBodyPhasesProrationBehavior
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['transfer_data'] = (node) => transferData = node
        .getObjectValue<SubscriptionSchedulesPostRequestBodyPhasesTransferData>(
            SubscriptionSchedulesPostRequestBodyPhasesTransferData
                .createFromDiscriminatorValue);
    deserializerMap['trial'] = (node) => trial = node.getBoolValue();
    deserializerMap['trial_end'] = (node) => trialEnd = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems>(
        'add_invoice_items', addInvoiceItems);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            SubscriptionSchedulesPostRequestBodyPhasesBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<
            SubscriptionSchedulesPostRequestBodyPhasesCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesDescription>(
        'description', description);
    writer
        .writeObjectValue<SubscriptionSchedulesPostRequestBodyPhasesDiscounts>(
            'discounts', discounts);
    writer.writeObjectValue<SubscriptionSchedulesPostRequestBodyPhasesDuration>(
        'duration', duration);
    writer.writeIntValue('end_date', endDate);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeCollectionOfObjectValues<
        SubscriptionSchedulesPostRequestBodyPhasesItems>('items', items);
    writer.writeObjectValue<SubscriptionSchedulesPostRequestBodyPhasesMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeEnumValue<
            SubscriptionSchedulesPostRequestBodyPhasesProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesTransferData>(
        'transfer_data', transferData);
    writer.writeBoolValue('trial', value: trial);
    writer.writeIntValue('trial_end', trialEnd);
    writer.writeAdditionalData(additionalData);
  }
}
