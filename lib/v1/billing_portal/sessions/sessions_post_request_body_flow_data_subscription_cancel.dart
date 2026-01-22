// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_flow_data_subscription_cancel_retention.dart';

/// auto generated
class SessionsPostRequestBodyFlowDataSubscriptionCancel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The retention property
  SessionsPostRequestBodyFlowDataSubscriptionCancelRetention? retention;

  ///  The subscription property
  String? subscription;

  /// Instantiates a new [SessionsPostRequestBodyFlowDataSubscriptionCancel] and sets the default values.
  SessionsPostRequestBodyFlowDataSubscriptionCancel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFlowDataSubscriptionCancel
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyFlowDataSubscriptionCancel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['retention'] = (node) => retention = node.getObjectValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetention>(
        SessionsPostRequestBodyFlowDataSubscriptionCancelRetention
            .createFromDiscriminatorValue);
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetention>(
        'retention', retention);
    writer.writeStringValue('subscription', subscription);
    writer.writeAdditionalData(additionalData);
  }
}
