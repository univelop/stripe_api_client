// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_cancel_cancellation_reason_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>], [String?]
class ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions
    implements Parsable {
  ///  Composed type representation for type [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>]
  Iterable<
          ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>?
      configurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.configurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
              ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1
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
    } else if (configurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1>(
          null,
          configurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptionsMember1);
    }
  }
}
