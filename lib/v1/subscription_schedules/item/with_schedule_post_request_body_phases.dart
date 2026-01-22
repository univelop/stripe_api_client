// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_add_invoice_items.dart';
import './with_schedule_post_request_body_phases_automatic_tax.dart';
import './with_schedule_post_request_body_phases_billing_cycle_anchor.dart';
import './with_schedule_post_request_body_phases_billing_thresholds.dart';
import './with_schedule_post_request_body_phases_collection_method.dart';
import './with_schedule_post_request_body_phases_default_tax_rates.dart';
import './with_schedule_post_request_body_phases_description.dart';
import './with_schedule_post_request_body_phases_discounts.dart';
import './with_schedule_post_request_body_phases_duration.dart';
import './with_schedule_post_request_body_phases_end_date.dart';
import './with_schedule_post_request_body_phases_invoice_settings.dart';
import './with_schedule_post_request_body_phases_items.dart';
import './with_schedule_post_request_body_phases_metadata.dart';
import './with_schedule_post_request_body_phases_proration_behavior.dart';
import './with_schedule_post_request_body_phases_start_date.dart';
import './with_schedule_post_request_body_phases_transfer_data.dart';
import './with_schedule_post_request_body_phases_trial_end.dart';

/// auto generated
class WithSchedulePostRequestBodyPhases
    implements AdditionalDataHolder, Parsable {
  ///  The add_invoice_items property
  Iterable<WithSchedulePostRequestBodyPhasesAddInvoiceItems>? addInvoiceItems;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The automatic_tax property
  WithSchedulePostRequestBodyPhasesAutomaticTax? automaticTax;

  ///  The billing_cycle_anchor property
  WithSchedulePostRequestBodyPhasesBillingCycleAnchor? billingCycleAnchor;

  ///  The billing_thresholds property
  WithSchedulePostRequestBodyPhasesBillingThresholds? billingThresholds;

  ///  The collection_method property
  WithSchedulePostRequestBodyPhasesCollectionMethod? collectionMethod;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The default_tax_rates property
  WithSchedulePostRequestBodyPhasesDefaultTaxRates? defaultTaxRates;

  ///  The description property
  WithSchedulePostRequestBodyPhasesDescription? description;

  ///  The discounts property
  WithSchedulePostRequestBodyPhasesDiscounts? discounts;

  ///  The duration property
  WithSchedulePostRequestBodyPhasesDuration? duration;

  ///  The end_date property
  WithSchedulePostRequestBodyPhasesEndDate? endDate;

  ///  The invoice_settings property
  WithSchedulePostRequestBodyPhasesInvoiceSettings? invoiceSettings;

  ///  The items property
  Iterable<WithSchedulePostRequestBodyPhasesItems>? items;

  ///  The metadata property
  WithSchedulePostRequestBodyPhasesMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  ///  The proration_behavior property
  WithSchedulePostRequestBodyPhasesProrationBehavior? prorationBehavior;

  ///  The start_date property
  WithSchedulePostRequestBodyPhasesStartDate? startDate;

  ///  The transfer_data property
  WithSchedulePostRequestBodyPhasesTransferData? transferData;

  ///  The trial property
  bool? trial;

  ///  The trial_end property
  WithSchedulePostRequestBodyPhasesTrialEnd? trialEnd;

  /// Instantiates a new [WithSchedulePostRequestBodyPhases] and sets the default values.
  WithSchedulePostRequestBodyPhases() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhases createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSchedulePostRequestBodyPhases();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['add_invoice_items'] = (node) => addInvoiceItems =
        node.getCollectionOfObjectValues<
                WithSchedulePostRequestBodyPhasesAddInvoiceItems>(
            WithSchedulePostRequestBodyPhasesAddInvoiceItems
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesAutomaticTax>(
            WithSchedulePostRequestBodyPhasesAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<WithSchedulePostRequestBodyPhasesBillingCycleAnchor>(
            (stringValue) => WithSchedulePostRequestBodyPhasesBillingCycleAnchor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesBillingThresholds>(
            WithSchedulePostRequestBodyPhasesBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<WithSchedulePostRequestBodyPhasesCollectionMethod>(
            (stringValue) => WithSchedulePostRequestBodyPhasesCollectionMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesDefaultTaxRates>(
            WithSchedulePostRequestBodyPhasesDefaultTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesDescription>(
            WithSchedulePostRequestBodyPhasesDescription
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesDiscounts>(
            WithSchedulePostRequestBodyPhasesDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['duration'] = (node) => duration = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesDuration>(
        WithSchedulePostRequestBodyPhasesDuration.createFromDiscriminatorValue);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesEndDate>(
        WithSchedulePostRequestBodyPhasesEndDate.createFromDiscriminatorValue);
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesInvoiceSettings>(
            WithSchedulePostRequestBodyPhasesInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items = node
        .getCollectionOfObjectValues<WithSchedulePostRequestBodyPhasesItems>(
            WithSchedulePostRequestBodyPhasesItems
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesMetadata>(
        WithSchedulePostRequestBodyPhasesMetadata.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<WithSchedulePostRequestBodyPhasesProrationBehavior>(
            (stringValue) => WithSchedulePostRequestBodyPhasesProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesStartDate>(
            WithSchedulePostRequestBodyPhasesStartDate
                .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesTransferData>(
            WithSchedulePostRequestBodyPhasesTransferData
                .createFromDiscriminatorValue);
    deserializerMap['trial'] = (node) => trial = node.getBoolValue();
    deserializerMap['trial_end'] = (node) => trialEnd = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesTrialEnd>(
        WithSchedulePostRequestBodyPhasesTrialEnd.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            WithSchedulePostRequestBodyPhasesAddInvoiceItems>(
        'add_invoice_items', addInvoiceItems);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<WithSchedulePostRequestBodyPhasesBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<WithSchedulePostRequestBodyPhasesCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesDescription>(
        'description', description);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesDuration>(
        'duration', duration);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesEndDate>(
        'end_date', endDate);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer
        .writeCollectionOfObjectValues<WithSchedulePostRequestBodyPhasesItems>(
            'items', items);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeEnumValue<WithSchedulePostRequestBodyPhasesProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesStartDate>(
        'start_date', startDate);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesTransferData>(
        'transfer_data', transferData);
    writer.writeBoolValue('trial', value: trial);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesTrialEnd>(
        'trial_end', trialEnd);
    writer.writeAdditionalData(additionalData);
  }
}
