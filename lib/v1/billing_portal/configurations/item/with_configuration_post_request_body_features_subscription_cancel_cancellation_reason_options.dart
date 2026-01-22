// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_cancel_cancellation_reason_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>], [String?]
class WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>]
  Iterable<
          WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>?
      withConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
              WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (withConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
          null,
          withConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1);
    }
  }
}
