// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_subscription_data_description.dart';
import './with_quote_post_request_body_subscription_data_effective_date.dart';
import './with_quote_post_request_body_subscription_data_metadata.dart';
import './with_quote_post_request_body_subscription_data_trial_period_days.dart';

/// auto generated
/// When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
class WithQuotePostRequestBodySubscriptionData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  WithQuotePostRequestBodySubscriptionDataDescription? description;

  ///  The effective_date property
  WithQuotePostRequestBodySubscriptionDataEffectiveDate? effectiveDate;

  ///  The metadata property
  WithQuotePostRequestBodySubscriptionDataMetadata? metadata;

  ///  The trial_period_days property
  WithQuotePostRequestBodySubscriptionDataTrialPeriodDays? trialPeriodDays;

  /// Instantiates a new [WithQuotePostRequestBodySubscriptionData] and sets the default values.
  WithQuotePostRequestBodySubscriptionData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodySubscriptionData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithQuotePostRequestBodySubscriptionData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] = (node) => description = node
        .getObjectValue<WithQuotePostRequestBodySubscriptionDataDescription>(
            WithQuotePostRequestBodySubscriptionDataDescription
                .createFromDiscriminatorValue);
    deserializerMap['effective_date'] = (node) => effectiveDate = node
        .getObjectValue<WithQuotePostRequestBodySubscriptionDataEffectiveDate>(
            WithQuotePostRequestBodySubscriptionDataEffectiveDate
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithQuotePostRequestBodySubscriptionDataMetadata>(
            WithQuotePostRequestBodySubscriptionDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] = (node) => trialPeriodDays =
        node.getObjectValue<
                WithQuotePostRequestBodySubscriptionDataTrialPeriodDays>(
            WithQuotePostRequestBodySubscriptionDataTrialPeriodDays
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithQuotePostRequestBodySubscriptionDataDescription>(
            'description', description);
    writer.writeObjectValue<
            WithQuotePostRequestBodySubscriptionDataEffectiveDate>(
        'effective_date', effectiveDate);
    writer.writeObjectValue<WithQuotePostRequestBodySubscriptionDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            WithQuotePostRequestBodySubscriptionDataTrialPeriodDays>(
        'trial_period_days', trialPeriodDays);
    writer.writeAdditionalData(additionalData);
  }
}
