// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_subscription_data_billing_mode.dart';
import './quotes_resource_subscription_data_subscription_data_metadata.dart';

/// auto generated
class QuotesResourceSubscriptionDataSubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing mode of the quote.
  QuotesResourceSubscriptionDataBillingMode? billingMode;

  ///  The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  String? description;

  ///  When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
  int? effectiveDate;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
  QuotesResourceSubscriptionDataSubscriptionDataMetadata? metadata;

  ///  Integer representing the number of trial period days before the customer is charged for the first time.
  int? trialPeriodDays;

  /// Instantiates a new [QuotesResourceSubscriptionDataSubscriptionData] and sets the default values.
  QuotesResourceSubscriptionDataSubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceSubscriptionDataSubscriptionData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return QuotesResourceSubscriptionDataSubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<QuotesResourceSubscriptionDataBillingMode>(
            QuotesResourceSubscriptionDataBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['effective_date'] =
        (node) => effectiveDate = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<QuotesResourceSubscriptionDataSubscriptionDataMetadata>(
            QuotesResourceSubscriptionDataSubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<QuotesResourceSubscriptionDataBillingMode>(
        'billing_mode', billingMode);
    writer.writeStringValue('description', description);
    writer.writeIntValue('effective_date', effectiveDate);
    writer.writeObjectValue<
            QuotesResourceSubscriptionDataSubscriptionDataMetadata>(
        'metadata', metadata);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
    writer.writeAdditionalData(additionalData);
  }
}
