// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_data_allow_redisplay.dart';

/// auto generated
/// This parameter allows you to set some attributes on the payment method created during a Checkout session.
class SessionsPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allow_redisplay property
  SessionsPostRequestBodyPaymentMethodDataAllowRedisplay? allowRedisplay;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodData] and sets the default values.
  SessionsPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay = node
        .getEnumValue<SessionsPostRequestBodyPaymentMethodDataAllowRedisplay>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodDataAllowRedisplay.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<SessionsPostRequestBodyPaymentMethodDataAllowRedisplay>(
            'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
