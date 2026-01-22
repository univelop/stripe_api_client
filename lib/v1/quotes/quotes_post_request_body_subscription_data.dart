// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_subscription_data_billing_mode.dart';
import './quotes_post_request_body_subscription_data_effective_date.dart';
import './quotes_post_request_body_subscription_data_metadata.dart';
import './quotes_post_request_body_subscription_data_trial_period_days.dart';

/// auto generated
/// When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
class QuotesPostRequestBodySubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_mode property
  QuotesPostRequestBodySubscriptionDataBillingMode? billingMode;

  ///  The description property
  String? description;

  ///  The effective_date property
  QuotesPostRequestBodySubscriptionDataEffectiveDate? effectiveDate;

  ///  The metadata property
  QuotesPostRequestBodySubscriptionDataMetadata? metadata;

  ///  The trial_period_days property
  QuotesPostRequestBodySubscriptionDataTrialPeriodDays? trialPeriodDays;

  /// Instantiates a new [QuotesPostRequestBodySubscriptionData] and sets the default values.
  QuotesPostRequestBodySubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodySubscriptionData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesPostRequestBodySubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<QuotesPostRequestBodySubscriptionDataBillingMode>(
            QuotesPostRequestBodySubscriptionDataBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['effective_date'] = (node) => effectiveDate =
        node.getObjectValue<QuotesPostRequestBodySubscriptionDataEffectiveDate>(
            QuotesPostRequestBodySubscriptionDataEffectiveDate
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<QuotesPostRequestBodySubscriptionDataMetadata>(
            QuotesPostRequestBodySubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] = (node) => trialPeriodDays = node
        .getObjectValue<QuotesPostRequestBodySubscriptionDataTrialPeriodDays>(
            QuotesPostRequestBodySubscriptionDataTrialPeriodDays
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<QuotesPostRequestBodySubscriptionDataBillingMode>(
        'billing_mode', billingMode);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<QuotesPostRequestBodySubscriptionDataEffectiveDate>(
        'effective_date', effectiveDate);
    writer.writeObjectValue<QuotesPostRequestBodySubscriptionDataMetadata>(
        'metadata', metadata);
    writer
        .writeObjectValue<QuotesPostRequestBodySubscriptionDataTrialPeriodDays>(
            'trial_period_days', trialPeriodDays);
    writer.writeAdditionalData(additionalData);
  }
}
