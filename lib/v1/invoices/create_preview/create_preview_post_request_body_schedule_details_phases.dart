// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items.dart';
import './create_preview_post_request_body_schedule_details_phases_automatic_tax.dart';
import './create_preview_post_request_body_schedule_details_phases_billing_cycle_anchor.dart';
import './create_preview_post_request_body_schedule_details_phases_billing_thresholds.dart';
import './create_preview_post_request_body_schedule_details_phases_collection_method.dart';
import './create_preview_post_request_body_schedule_details_phases_default_tax_rates.dart';
import './create_preview_post_request_body_schedule_details_phases_description.dart';
import './create_preview_post_request_body_schedule_details_phases_discounts.dart';
import './create_preview_post_request_body_schedule_details_phases_duration.dart';
import './create_preview_post_request_body_schedule_details_phases_end_date.dart';
import './create_preview_post_request_body_schedule_details_phases_invoice_settings.dart';
import './create_preview_post_request_body_schedule_details_phases_items.dart';
import './create_preview_post_request_body_schedule_details_phases_metadata.dart';
import './create_preview_post_request_body_schedule_details_phases_proration_behavior.dart';
import './create_preview_post_request_body_schedule_details_phases_start_date.dart';
import './create_preview_post_request_body_schedule_details_phases_transfer_data.dart';
import './create_preview_post_request_body_schedule_details_phases_trial_end.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhases
    implements AdditionalDataHolder, Parsable {
  ///  The add_invoice_items property
  Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems>?
      addInvoiceItems;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The automatic_tax property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax? automaticTax;

  ///  The billing_cycle_anchor property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingCycleAnchor?
      billingCycleAnchor;

  ///  The billing_thresholds property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds?
      billingThresholds;

  ///  The collection_method property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesCollectionMethod?
      collectionMethod;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The default_tax_rates property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesDefaultTaxRates?
      defaultTaxRates;

  ///  The description property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesDescription? description;

  ///  The discounts property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts? discounts;

  ///  The duration property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesDuration? duration;

  ///  The end_date property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesEndDate? endDate;

  ///  The invoice_settings property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings?
      invoiceSettings;

  ///  The items property
  Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhasesItems>? items;

  ///  The metadata property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  ///  The proration_behavior property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesProrationBehavior?
      prorationBehavior;

  ///  The start_date property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesStartDate? startDate;

  ///  The transfer_data property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesTransferData? transferData;

  ///  The trial property
  bool? trial;

  ///  The trial_end property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesTrialEnd? trialEnd;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhases] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhases() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhases
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhases();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['add_invoice_items'] = (node) => addInvoiceItems =
        node.getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap[
        'billing_cycle_anchor'] = (node) => billingCycleAnchor = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingCycleAnchor>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingCycleAnchor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'billing_thresholds'] = (node) => billingThresholds = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds
            .createFromDiscriminatorValue);
    deserializerMap[
        'collection_method'] = (node) => collectionMethod = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesCollectionMethod>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesCollectionMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap[
        'default_tax_rates'] = (node) => defaultTaxRates = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDefaultTaxRates>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesDefaultTaxRates
            .createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesDescription>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDescription
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['duration'] = (node) => duration = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDuration>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesDuration
            .createFromDiscriminatorValue);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesEndDate>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'invoice_settings'] = (node) => invoiceSettings = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings
            .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesItems>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItems
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesMetadata>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesMetadata
            .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesProrationBehavior>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesStartDate>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesStartDate
            .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesTransferData>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesTransferData
                .createFromDiscriminatorValue);
    deserializerMap['trial'] = (node) => trial = node.getBoolValue();
    deserializerMap['trial_end'] = (node) => trialEnd = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesTrialEnd>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesTrialEnd
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems>(
        'add_invoice_items', addInvoiceItems);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDescription>(
        'description', description);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDuration>(
        'duration', duration);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesEndDate>(
        'end_date', endDate);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeCollectionOfObjectValues<
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItems>('items', items);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesStartDate>(
        'start_date', startDate);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesTransferData>(
        'transfer_data', transferData);
    writer.writeBoolValue('trial', value: trial);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesTrialEnd>(
        'trial_end', trialEnd);
    writer.writeAdditionalData(additionalData);
  }
}
