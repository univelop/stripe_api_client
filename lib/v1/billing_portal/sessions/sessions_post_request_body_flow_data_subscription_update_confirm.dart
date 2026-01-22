// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_flow_data_subscription_update_confirm_discounts.dart';
import './sessions_post_request_body_flow_data_subscription_update_confirm_items.dart';

/// auto generated
class SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmDiscounts>?
      discounts;

  ///  The items property
  Iterable<SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems>?
      items;

  ///  The subscription property
  String? subscription;

  /// Instantiates a new [SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm] and sets the default values.
  SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirm();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'discounts'] = (node) => discounts = node.getCollectionOfObjectValues<
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmDiscounts>(
        SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<
                SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems>(
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems
                .createFromDiscriminatorValue);
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfObjectValues<
            SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems>(
        'items', items);
    writer.writeStringValue('subscription', subscription);
    writer.writeAdditionalData(additionalData);
  }
}
