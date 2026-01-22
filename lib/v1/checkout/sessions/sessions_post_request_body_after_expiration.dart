// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_after_expiration_recovery.dart';

/// auto generated
/// Configure actions after a Checkout Session has expired.
class SessionsPostRequestBodyAfterExpiration
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The recovery property
  SessionsPostRequestBodyAfterExpirationRecovery? recovery;

  /// Instantiates a new [SessionsPostRequestBodyAfterExpiration] and sets the default values.
  SessionsPostRequestBodyAfterExpiration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyAfterExpiration createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyAfterExpiration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['recovery'] = (node) => recovery =
        node.getObjectValue<SessionsPostRequestBodyAfterExpirationRecovery>(
            SessionsPostRequestBodyAfterExpirationRecovery
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyAfterExpirationRecovery>(
        'recovery', recovery);
    writer.writeAdditionalData(additionalData);
  }
}
