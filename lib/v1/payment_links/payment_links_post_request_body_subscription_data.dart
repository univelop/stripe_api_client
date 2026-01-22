// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_subscription_data_invoice_settings.dart';
import './payment_links_post_request_body_subscription_data_metadata.dart';
import './payment_links_post_request_body_subscription_data_trial_settings.dart';

/// auto generated
/// When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
class PaymentLinksPostRequestBodySubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  String? description;

  ///  The invoice_settings property
  PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings? invoiceSettings;

  ///  The metadata property
  PaymentLinksPostRequestBodySubscriptionDataMetadata? metadata;

  ///  The trial_period_days property
  int? trialPeriodDays;

  ///  The trial_settings property
  PaymentLinksPostRequestBodySubscriptionDataTrialSettings? trialSettings;

  /// Instantiates a new [PaymentLinksPostRequestBodySubscriptionData] and sets the default values.
  PaymentLinksPostRequestBodySubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodySubscriptionData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodySubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<
                PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings>(
            PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<PaymentLinksPostRequestBodySubscriptionDataMetadata>(
            PaymentLinksPostRequestBodySubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    deserializerMap['trial_settings'] = (node) => trialSettings =
        node.getObjectValue<
                PaymentLinksPostRequestBodySubscriptionDataTrialSettings>(
            PaymentLinksPostRequestBodySubscriptionDataTrialSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeObjectValue<
            PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer
        .writeObjectValue<PaymentLinksPostRequestBodySubscriptionDataMetadata>(
            'metadata', metadata);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
    writer.writeObjectValue<
            PaymentLinksPostRequestBodySubscriptionDataTrialSettings>(
        'trial_settings', trialSettings);
    writer.writeAdditionalData(additionalData);
  }
}
