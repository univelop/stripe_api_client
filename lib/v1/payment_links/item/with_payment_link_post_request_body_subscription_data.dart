// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_subscription_data_invoice_settings.dart';
import './with_payment_link_post_request_body_subscription_data_trial_period_days.dart';
import './with_payment_link_post_request_body_subscription_data_trial_settings.dart';

/// auto generated
/// When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
class WithPaymentLinkPostRequestBodySubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice_settings property
  WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings?
      invoiceSettings;

  ///  The metadata property
  String? metadata;

  ///  The trial_period_days property
  WithPaymentLinkPostRequestBodySubscriptionDataTrialPeriodDays?
      trialPeriodDays;

  ///  The trial_settings property
  WithPaymentLinkPostRequestBodySubscriptionDataTrialSettings? trialSettings;

  /// Instantiates a new [WithPaymentLinkPostRequestBodySubscriptionData] and sets the default values.
  WithPaymentLinkPostRequestBodySubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodySubscriptionData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodySubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings>(
            WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['trial_period_days'] = (node) => trialPeriodDays =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodySubscriptionDataTrialPeriodDays>(
            WithPaymentLinkPostRequestBodySubscriptionDataTrialPeriodDays
                .createFromDiscriminatorValue);
    deserializerMap['trial_settings'] = (node) => trialSettings =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodySubscriptionDataTrialSettings>(
            WithPaymentLinkPostRequestBodySubscriptionDataTrialSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataTrialPeriodDays>(
        'trial_period_days', trialPeriodDays);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataTrialSettings>(
        'trial_settings', trialSettings);
    writer.writeAdditionalData(additionalData);
  }
}
