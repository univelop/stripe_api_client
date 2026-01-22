// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_default_settings_automatic_tax.dart';
import './with_schedule_post_request_body_default_settings_billing_cycle_anchor.dart';
import './with_schedule_post_request_body_default_settings_billing_thresholds.dart';
import './with_schedule_post_request_body_default_settings_collection_method.dart';
import './with_schedule_post_request_body_default_settings_description.dart';
import './with_schedule_post_request_body_default_settings_invoice_settings.dart';
import './with_schedule_post_request_body_default_settings_on_behalf_of.dart';
import './with_schedule_post_request_body_default_settings_transfer_data.dart';

/// auto generated
/// Object representing the subscription schedule's default settings.
class WithSchedulePostRequestBodyDefaultSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The automatic_tax property
  WithSchedulePostRequestBodyDefaultSettingsAutomaticTax? automaticTax;

  ///  The billing_cycle_anchor property
  WithSchedulePostRequestBodyDefaultSettingsBillingCycleAnchor?
      billingCycleAnchor;

  ///  The billing_thresholds property
  WithSchedulePostRequestBodyDefaultSettingsBillingThresholds?
      billingThresholds;

  ///  The collection_method property
  WithSchedulePostRequestBodyDefaultSettingsCollectionMethod? collectionMethod;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The description property
  WithSchedulePostRequestBodyDefaultSettingsDescription? description;

  ///  The invoice_settings property
  WithSchedulePostRequestBodyDefaultSettingsInvoiceSettings? invoiceSettings;

  ///  The on_behalf_of property
  WithSchedulePostRequestBodyDefaultSettingsOnBehalfOf? onBehalfOf;

  ///  The transfer_data property
  WithSchedulePostRequestBodyDefaultSettingsTransferData? transferData;

  /// Instantiates a new [WithSchedulePostRequestBodyDefaultSettings] and sets the default values.
  WithSchedulePostRequestBodyDefaultSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyDefaultSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSchedulePostRequestBodyDefaultSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax = node
        .getObjectValue<WithSchedulePostRequestBodyDefaultSettingsAutomaticTax>(
            WithSchedulePostRequestBodyDefaultSettingsAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<
                WithSchedulePostRequestBodyDefaultSettingsBillingCycleAnchor>(
            (stringValue) =>
                WithSchedulePostRequestBodyDefaultSettingsBillingCycleAnchor
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                WithSchedulePostRequestBodyDefaultSettingsBillingThresholds>(
            WithSchedulePostRequestBodyDefaultSettingsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<
                WithSchedulePostRequestBodyDefaultSettingsCollectionMethod>(
            (stringValue) =>
                WithSchedulePostRequestBodyDefaultSettingsCollectionMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['description'] = (node) => description = node
        .getObjectValue<WithSchedulePostRequestBodyDefaultSettingsDescription>(
            WithSchedulePostRequestBodyDefaultSettingsDescription
                .createFromDiscriminatorValue);
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<
                WithSchedulePostRequestBodyDefaultSettingsInvoiceSettings>(
            WithSchedulePostRequestBodyDefaultSettingsInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf = node
        .getObjectValue<WithSchedulePostRequestBodyDefaultSettingsOnBehalfOf>(
            WithSchedulePostRequestBodyDefaultSettingsOnBehalfOf
                .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData = node
        .getObjectValue<WithSchedulePostRequestBodyDefaultSettingsTransferData>(
            WithSchedulePostRequestBodyDefaultSettingsTransferData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyDefaultSettingsAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<
            WithSchedulePostRequestBodyDefaultSettingsBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyDefaultSettingsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeEnumValue<
            WithSchedulePostRequestBodyDefaultSettingsCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyDefaultSettingsDescription>(
        'description', description);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyDefaultSettingsInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer
        .writeObjectValue<WithSchedulePostRequestBodyDefaultSettingsOnBehalfOf>(
            'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyDefaultSettingsTransferData>(
        'transfer_data', transferData);
    writer.writeAdditionalData(additionalData);
  }
}
