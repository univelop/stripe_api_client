// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_subscription_data_invoice_settings.dart';
import './payment_links_resource_subscription_data_metadata.dart';
import './subscriptions_trials_resource_trial_settings.dart';

/// auto generated
class PaymentLinksResourceSubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  String? description;

  ///  The invoice_settings property
  PaymentLinksResourceSubscriptionDataInvoiceSettings? invoiceSettings;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on [Subscriptions](https://docs.stripe.com/api/subscriptions) generated from this payment link.
  PaymentLinksResourceSubscriptionDataMetadata? metadata;

  ///  Integer representing the number of trial period days before the customer is charged for the first time.
  int? trialPeriodDays;

  ///  Settings related to subscription trials.
  SubscriptionsTrialsResourceTrialSettings? trialSettings;

  /// Instantiates a new [PaymentLinksResourceSubscriptionData] and sets the default values.
  PaymentLinksResourceSubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceSubscriptionData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceSubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings = node
        .getObjectValue<PaymentLinksResourceSubscriptionDataInvoiceSettings>(
            PaymentLinksResourceSubscriptionDataInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentLinksResourceSubscriptionDataMetadata>(
            PaymentLinksResourceSubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    deserializerMap['trial_settings'] = (node) => trialSettings =
        node.getObjectValue<SubscriptionsTrialsResourceTrialSettings>(
            SubscriptionsTrialsResourceTrialSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer
        .writeObjectValue<PaymentLinksResourceSubscriptionDataInvoiceSettings>(
            'invoice_settings', invoiceSettings);
    writer.writeObjectValue<PaymentLinksResourceSubscriptionDataMetadata>(
        'metadata', metadata);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
    writer.writeObjectValue<SubscriptionsTrialsResourceTrialSettings>(
        'trial_settings', trialSettings);
    writer.writeAdditionalData(additionalData);
  }
}
