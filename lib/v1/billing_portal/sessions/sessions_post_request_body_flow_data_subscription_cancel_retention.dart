// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_flow_data_subscription_cancel_retention_coupon_offer.dart';
import './sessions_post_request_body_flow_data_subscription_cancel_retention_type.dart';

/// auto generated
class SessionsPostRequestBodyFlowDataSubscriptionCancelRetention
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The coupon_offer property
  SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionCouponOffer?
      couponOffer;

  ///  The type property
  SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionType? type_;

  /// Instantiates a new [SessionsPostRequestBodyFlowDataSubscriptionCancelRetention] and sets the default values.
  SessionsPostRequestBodyFlowDataSubscriptionCancelRetention()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFlowDataSubscriptionCancelRetention
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyFlowDataSubscriptionCancelRetention();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'coupon_offer'] = (node) => couponOffer = node.getObjectValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionCouponOffer>(
        SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionCouponOffer
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionType>(
        (stringValue) =>
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionCouponOffer>(
        'coupon_offer', couponOffer);
    writer.writeEnumValue<
            SessionsPostRequestBodyFlowDataSubscriptionCancelRetentionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
