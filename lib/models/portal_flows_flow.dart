// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_flows_flow_after_completion.dart';
import './portal_flows_flow_subscription_cancel.dart';
import './portal_flows_flow_subscription_update.dart';
import './portal_flows_flow_subscription_update_confirm.dart';
import './portal_flows_flow_type.dart';

/// auto generated
class PortalFlowsFlow implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_completion property
  PortalFlowsFlowAfterCompletion? afterCompletion;

  ///  Configuration when `flow.type=subscription_cancel`.
  PortalFlowsFlowSubscriptionCancel? subscriptionCancel;

  ///  Configuration when `flow.type=subscription_update`.
  PortalFlowsFlowSubscriptionUpdate? subscriptionUpdate;

  ///  Configuration when `flow.type=subscription_update_confirm`.
  PortalFlowsFlowSubscriptionUpdateConfirm? subscriptionUpdateConfirm;

  ///  Type of flow that the customer will go through.
  PortalFlowsFlowType? type_;

  /// Instantiates a new [PortalFlowsFlow] and sets the default values.
  PortalFlowsFlow() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsFlow createFromDiscriminatorValue(ParseNode parseNode) {
    return PortalFlowsFlow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_completion'] = (node) => afterCompletion =
        node.getObjectValue<PortalFlowsFlowAfterCompletion>(
            PortalFlowsFlowAfterCompletion.createFromDiscriminatorValue);
    deserializerMap['subscription_cancel'] = (node) => subscriptionCancel =
        node.getObjectValue<PortalFlowsFlowSubscriptionCancel>(
            PortalFlowsFlowSubscriptionCancel.createFromDiscriminatorValue);
    deserializerMap['subscription_update'] = (node) => subscriptionUpdate =
        node.getObjectValue<PortalFlowsFlowSubscriptionUpdate>(
            PortalFlowsFlowSubscriptionUpdate.createFromDiscriminatorValue);
    deserializerMap['subscription_update_confirm'] = (node) =>
        subscriptionUpdateConfirm =
            node.getObjectValue<PortalFlowsFlowSubscriptionUpdateConfirm>(
                PortalFlowsFlowSubscriptionUpdateConfirm
                    .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PortalFlowsFlowType>((stringValue) =>
            PortalFlowsFlowType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalFlowsFlowAfterCompletion>(
        'after_completion', afterCompletion);
    writer.writeObjectValue<PortalFlowsFlowSubscriptionCancel>(
        'subscription_cancel', subscriptionCancel);
    writer.writeObjectValue<PortalFlowsFlowSubscriptionUpdate>(
        'subscription_update', subscriptionUpdate);
    writer.writeObjectValue<PortalFlowsFlowSubscriptionUpdateConfirm>(
        'subscription_update_confirm', subscriptionUpdateConfirm);
    writer.writeEnumValue<PortalFlowsFlowType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
