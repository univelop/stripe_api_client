// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_cancel_cancellation_reason_options.dart';

/// auto generated
class WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The options property
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions?
      options;

  /// Instantiates a new [WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason] and sets the default values.
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['options'] = (node) => options = node.getObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions>(
        WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReasonOptions>(
        'options', options);
    writer.writeAdditionalData(additionalData);
  }
}
