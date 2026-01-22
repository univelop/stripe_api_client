// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_subscription_data_billing_mode.dart';
import './sessions_post_request_body_subscription_data_invoice_settings.dart';
import './sessions_post_request_body_subscription_data_metadata.dart';
import './sessions_post_request_body_subscription_data_proration_behavior.dart';
import './sessions_post_request_body_subscription_data_transfer_data.dart';
import './sessions_post_request_body_subscription_data_trial_settings.dart';

/// auto generated
/// A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
class SessionsPostRequestBodySubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_percent property
  double? applicationFeePercent;

  ///  The billing_cycle_anchor property
  int? billingCycleAnchor;

  ///  The billing_mode property
  SessionsPostRequestBodySubscriptionDataBillingMode? billingMode;

  ///  The default_tax_rates property
  Iterable<String>? defaultTaxRates;

  ///  The description property
  String? description;

  ///  The invoice_settings property
  SessionsPostRequestBodySubscriptionDataInvoiceSettings? invoiceSettings;

  ///  The metadata property
  SessionsPostRequestBodySubscriptionDataMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  ///  The proration_behavior property
  SessionsPostRequestBodySubscriptionDataProrationBehavior? prorationBehavior;

  ///  The transfer_data property
  SessionsPostRequestBodySubscriptionDataTransferData? transferData;

  ///  The trial_end property
  int? trialEnd;

  ///  The trial_period_days property
  int? trialPeriodDays;

  ///  The trial_settings property
  SessionsPostRequestBodySubscriptionDataTrialSettings? trialSettings;

  /// Instantiates a new [SessionsPostRequestBodySubscriptionData] and sets the default values.
  SessionsPostRequestBodySubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodySubscriptionData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodySubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['billing_cycle_anchor'] =
        (node) => billingCycleAnchor = node.getIntValue();
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<SessionsPostRequestBodySubscriptionDataBillingMode>(
            SessionsPostRequestBodySubscriptionDataBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['default_tax_rates'] = (node) =>
        defaultTaxRates = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings = node
        .getObjectValue<SessionsPostRequestBodySubscriptionDataInvoiceSettings>(
            SessionsPostRequestBodySubscriptionDataInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SessionsPostRequestBodySubscriptionDataMetadata>(
            SessionsPostRequestBodySubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['proration_behavior'] = (node) => prorationBehavior = node
        .getEnumValue<SessionsPostRequestBodySubscriptionDataProrationBehavior>(
            (stringValue) =>
                SessionsPostRequestBodySubscriptionDataProrationBehavior.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['transfer_data'] = (node) => transferData = node
        .getObjectValue<SessionsPostRequestBodySubscriptionDataTransferData>(
            SessionsPostRequestBodySubscriptionDataTransferData
                .createFromDiscriminatorValue);
    deserializerMap['trial_end'] = (node) => trialEnd = node.getIntValue();
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    deserializerMap['trial_settings'] = (node) => trialSettings = node
        .getObjectValue<SessionsPostRequestBodySubscriptionDataTrialSettings>(
            SessionsPostRequestBodySubscriptionDataTrialSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeIntValue('billing_cycle_anchor', billingCycleAnchor);
    writer.writeObjectValue<SessionsPostRequestBodySubscriptionDataBillingMode>(
        'billing_mode', billingMode);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<
            SessionsPostRequestBodySubscriptionDataInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeObjectValue<SessionsPostRequestBodySubscriptionDataMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeEnumValue<
            SessionsPostRequestBodySubscriptionDataProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer
        .writeObjectValue<SessionsPostRequestBodySubscriptionDataTransferData>(
            'transfer_data', transferData);
    writer.writeIntValue('trial_end', trialEnd);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
    writer
        .writeObjectValue<SessionsPostRequestBodySubscriptionDataTrialSettings>(
            'trial_settings', trialSettings);
    writer.writeAdditionalData(additionalData);
  }
}
