// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_flow_data_after_completion.dart';
import './sessions_post_request_body_flow_data_subscription_cancel.dart';
import './sessions_post_request_body_flow_data_subscription_update.dart';
import './sessions_post_request_body_flow_data_subscription_update_confirm.dart';
import './sessions_post_request_body_flow_data_type.dart';

/// auto generated
/// Information about a specific flow for the customer to go through. See the [docs](https://docs.stripe.com/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
class SessionsPostRequestBodyFlowData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_completion property
  SessionsPostRequestBodyFlowDataAfterCompletion? afterCompletion;

  ///  The subscription_cancel property
  SessionsPostRequestBodyFlowDataSubscriptionCancel? subscriptionCancel;

  ///  The subscription_update property
  SessionsPostRequestBodyFlowDataSubscriptionUpdate? subscriptionUpdate;

  ///  The subscription_update_confirm property
  SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm?
      subscriptionUpdateConfirm;

  ///  The type property
  SessionsPostRequestBodyFlowDataType? type_;

  /// Instantiates a new [SessionsPostRequestBodyFlowData] and sets the default values.
  SessionsPostRequestBodyFlowData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFlowData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyFlowData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_completion'] = (node) => afterCompletion =
        node.getObjectValue<SessionsPostRequestBodyFlowDataAfterCompletion>(
            SessionsPostRequestBodyFlowDataAfterCompletion
                .createFromDiscriminatorValue);
    deserializerMap['subscription_cancel'] = (node) => subscriptionCancel =
        node.getObjectValue<SessionsPostRequestBodyFlowDataSubscriptionCancel>(
            SessionsPostRequestBodyFlowDataSubscriptionCancel
                .createFromDiscriminatorValue);
    deserializerMap['subscription_update'] = (node) => subscriptionUpdate =
        node.getObjectValue<SessionsPostRequestBodyFlowDataSubscriptionUpdate>(
            SessionsPostRequestBodyFlowDataSubscriptionUpdate
                .createFromDiscriminatorValue);
    deserializerMap['subscription_update_confirm'] = (node) =>
        subscriptionUpdateConfirm = node.getObjectValue<
                SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm>(
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SessionsPostRequestBodyFlowDataType>((stringValue) =>
            SessionsPostRequestBodyFlowDataType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyFlowDataAfterCompletion>(
        'after_completion', afterCompletion);
    writer.writeObjectValue<SessionsPostRequestBodyFlowDataSubscriptionCancel>(
        'subscription_cancel', subscriptionCancel);
    writer.writeObjectValue<SessionsPostRequestBodyFlowDataSubscriptionUpdate>(
        'subscription_update', subscriptionUpdate);
    writer.writeObjectValue<
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm>(
        'subscription_update_confirm', subscriptionUpdateConfirm);
    writer.writeEnumValue<SessionsPostRequestBodyFlowDataType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
