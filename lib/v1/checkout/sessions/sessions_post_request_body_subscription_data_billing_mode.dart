// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_subscription_data_billing_mode_flexible.dart';
import './sessions_post_request_body_subscription_data_billing_mode_type.dart';

/// auto generated
class SessionsPostRequestBodySubscriptionDataBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flexible property
  SessionsPostRequestBodySubscriptionDataBillingModeFlexible? flexible;

  ///  The type property
  SessionsPostRequestBodySubscriptionDataBillingModeType? type_;

  /// Instantiates a new [SessionsPostRequestBodySubscriptionDataBillingMode] and sets the default values.
  SessionsPostRequestBodySubscriptionDataBillingMode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodySubscriptionDataBillingMode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodySubscriptionDataBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            SessionsPostRequestBodySubscriptionDataBillingModeFlexible>(
        SessionsPostRequestBodySubscriptionDataBillingModeFlexible
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<SessionsPostRequestBodySubscriptionDataBillingModeType>(
            (stringValue) =>
                SessionsPostRequestBodySubscriptionDataBillingModeType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodySubscriptionDataBillingModeFlexible>(
        'flexible', flexible);
    writer
        .writeEnumValue<SessionsPostRequestBodySubscriptionDataBillingModeType>(
            'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
